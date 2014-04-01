class Order < ActiveRecord::Base
    has_many :line_items
    has_many :products, through: :line_items
    accepts_nested_attributes_for :line_items, :allow_destroy => true, :reject_if => lambda { |a| a[:product_id].blank? }

    validates_presence_of :name
    validates_presence_of :surname
    validates_presence_of :address
    validates_presence_of :city
    validates_presence_of :payment
    validates_format_of :payment, :with => /\A\b(efectivo|tarjeta|paypal)\z/, :message => "efectivo, tarjeta o paypal"
    validates_presence_of :status
    validates_format_of :status, :with => /\A\b(Pendiente|Enviado|Recibido)\z/, :message => "Pendiente, Enviado, Recibido"

end