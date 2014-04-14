class Order < ActiveRecord::Base
    has_many :line_items
    has_many :products, through: :line_items
    accepts_nested_attributes_for :line_items, :allow_destroy => true, :reject_if => lambda { |a| a[:product_id].blank? }

    before_create :set_status

    validates :name, :surname, :address, :city, :payment, presence: true
    validates :status, on: :update, presence: true

    validates :payment, format: {with: /\A\b(Efectivo|Tarjeta|Paypal)\z/, message: "Efectivo, Tarjeta o Paypal"}
    validates :status, on: :update, format: {with: /\A\b(Pendiente|Enviado|Recibido)\z/, message: "Pendiente, Enviado, Recibido"}

    protected
        def set_status
            self.status = 'Pendiente'
        end

end