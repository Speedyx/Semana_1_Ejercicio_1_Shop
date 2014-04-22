# spec/models/product_spec.rb
require 'spec_helper'

describe Product do

    #before :each do
        #product = Product.new(:name => "Gadget", :description => "Some test description", :added_at => "2014-03-23 15:15:15", :manufacturer => "Samsung", :units => 5, :category => "Electronics", :price => 9.95)
    #end

    describe "#new" do
        it "returns a new product object" do
            should be_an_instance_of Product
        end

        it "Is invalid" do
            should_not be_valid
        end

    end

    describe "#create" do
        it "change number or products" do
            product = Product.new(:name => "Gadget", :description => "Some test description", :added_at => "2014-03-23 15:15:15", :manufacturer => "Samsung", :units => 5, :category => "Electronics", :price => 9.95)
            expect {product.save}.to change {Product.count}.by(1)
        end

    end

    it { should respond_to(:name) }
    it { should respond_to(:description) }
    it { should respond_to(:added_at) }
    it { should respond_to(:manufacturer) }
    it { should respond_to(:units) }
    it { should respond_to(:category) }
    it { should respond_to(:price) }
    it { should_not respond_to(:zzz) }

    it { FactoryGirl.build(:product).should be_valid }
    it { FactoryGirl.build(:product, category: nil).should_not be_valid }
    it { FactoryGirl.build(:product, units: "A").should_not be_valid }
    it { FactoryGirl.build(:product, price: "A").should_not be_valid }

end
