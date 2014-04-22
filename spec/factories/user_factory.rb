# spec/factories/user_factory.rb
require 'faker'

FactoryGirl.define do
  factory :user do
    name "MiNombre"
    surname "Mis Apellidos"
    email {Faker::Internet.email}
    password "pass1234"
    password_confirmation "pass1234"
  end

end
