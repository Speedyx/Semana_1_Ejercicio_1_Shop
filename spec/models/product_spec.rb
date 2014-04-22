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

    it "responds to name" do
        should respond_to(:name)
    end
    it "responds to description" do
        should respond_to(:description)
    end
    it "responds to added_at" do
        should respond_to(:added_at)
    end
    it "responds to manufacturer" do
        should respond_to(:manufacturer)
    end
    it "responds to units" do
        should respond_to(:units)
    end
    it "responds to created_at" do
        should respond_to(:created_at)
    end
    it "responds to category" do
        should respond_to(:category)
    end
    it "responds to price" do
        should respond_to(:price)
    end
    it "not responds to zzz" do
        should_not respond_to(:zzz)
    end

end
