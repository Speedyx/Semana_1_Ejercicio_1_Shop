class Order < ActiveRecord::Base
    has_many :line_items
    has_many :products, through: :line_items
    accepts_nested_attributes_for :line_items, :allow_destroy => true, :reject_if => lambda { |a| a[:product_id].blank? }

    before_create :set_status

    PAYMENTS = %w(Cash Card Paypal)
    #PAYMENTS = %w(#{t('var.payments.cash')} #{t('var.payments.card')} #{t('var.payments.paypal')})
    #PAYMENTS = %w(/\A\b(t('var.payments.cash')|t('var.payments.card')|t('var.payments.paypal'))\z/)
    STATUS = %w(Waiting Sent Delivered)

    validates :name, :surname, :address, :city, :payment, presence: true
    validates :status, on: :update, presence: true

    #validates :payment, format: {with: /\A\b(Efectivo|Tarjeta|Paypal)\z/, message: "Efectivo, Tarjeta o Paypal"}
    #validates :status, on: :update, format: {with: /\A\b(Pendiente|Enviado|Recibido)\z/, message: "Pendiente, Enviado, Recibido"}
    validates :payment, inclusion: { in: PAYMENTS, message: "%{value} is not a valid payment: Cash, Card or Paypal" }
    validates :status, inclusion: { in: STATUS, message: "%{value} is not a valid state: Waiting, Sent or Delivered" }

    protected
        def set_status
            self.status = 'Waiting'
        end

end
