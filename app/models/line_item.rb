class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

    validates_presence_of :product_id
    validates_presence_of :units
    validates_numericality_of :units, :only_integer => true, :greater_than_or_equal_to => 1
    validates_presence_of :price
    validates_numericality_of :price, :greater_than_or_equal_to => 0

end
