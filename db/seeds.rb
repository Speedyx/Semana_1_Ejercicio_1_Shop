# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#order
Order.create(:state => 'Ordered', :payment => 'TPV', :address => 'My home', :city => 'My city', :name => 'My Name', :surname => 'My Surname', :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15')

#product
Product.create(:name => 'Galaxy Tab 2 - 7', :description => 'Description Galaxy Tab 2 - 7', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Samsung', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'Galaxy Tab 2 - 10', :description => 'Description Galaxy Tab 2 - 10', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Samsung', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'Galaxy Tab 3 - 7', :description => 'Description Galaxy Tab 3 - 7', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Samsung', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'Galaxy Tab 3 - 10', :description => 'Description Galaxy Tab 3 - 10', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Samsung', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'Google Nexus - 7', :description => 'Description Google Nexus - 7', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Google', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'Google Nexus - 10', :description => 'Description Google Nexus - 10', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Google', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'iPad 7', :description => 'Description iPad 7', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Apple', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'iPad 10', :description => 'Description iPad 10', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Apple', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Tablet', :price => 100.00)
Product.create(:name => 'iPhone 5', :description => 'Description iPhone 5', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Apple', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Mobile', :price => 100.00)
Product.create(:name => 'Google Nexus 5', :description => 'Description Google Nexus 5', :added_at => '2014-03-23 15:15:15', :manufacturer => 'Google', :units => 5, :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15', :category => 'Mobile', :price => 100.00)
