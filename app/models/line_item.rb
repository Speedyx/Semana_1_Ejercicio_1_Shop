class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

    validates :product_id, :units, presence: true
    validates_numericality_of :units, :only_integer => true, :greater_than_or_equal_to => 1

    before_save :update_lineitem, on: [ :create, :update]

    protected
        def update_lineitem
            self.price = self.product.price
            self.product.units -= self.units
            #Terminamos con exclamación para que devuelva el error si lo hay
            self.product.save!
        end

end
