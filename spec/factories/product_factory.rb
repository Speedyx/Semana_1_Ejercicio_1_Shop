require 'faker'

FactoryGirl.define do
  factory :product do
    name "Gadget"
    description "Some test description"
    added_at "2014-03-23 15:15:15"
    manufacturer "Samsung"
    units 5
    category "Electronics"
    price 10.00
  end

end
