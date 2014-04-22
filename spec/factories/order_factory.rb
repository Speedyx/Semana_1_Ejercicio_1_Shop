# spec/factories/order_factory.rb
require 'faker'

FactoryGirl.define do
  factory :order do
    status "Waiting"
    payment "Paypal"
    address "My home"
    city "My city"
    name "My Name"
    surname "My Surname"
  end

end
