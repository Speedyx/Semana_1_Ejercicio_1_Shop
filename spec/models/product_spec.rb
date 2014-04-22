require 'spec_helper'

describe Product do

    before :each do
    #before :all do
        product = Product.new(:name => "Gadget", :description => "Some test description", :added_at => "2014-03-23 15:15:15", :manufacturer => "Samsung", :units => 5, :category => "Electronics", :price => 9.95)
    end

    describe "#new" do
        #Funciona
        it "returns a new product object" do
            product = Product.new(:name => "Gadget", :description => "Some test description", :added_at => "2014-03-23 15:15:15", :manufacturer => "Samsung", :units => 5, :category => "Electronics", :price => 9.95)
            product.should be_an_instance_of Product
        end

        #Funciona
        it "Is invalid" do
            product = Product.new
            product.should_not be_valid
        end

    end

    describe "#create" do
        #Funciona
        it "change number or products" do
            product = Product.new(:name => "Gadget", :description => "Some test description", :added_at => "2014-03-23 15:15:15", :manufacturer => "Samsung", :units => 5, :category => "Electronics", :price => 9.95)
            expect {product.save}.to change {Product.count}.by(1)
        end

    end

    #No funciona
    describe "#category" do
        it "returns the correct category" do
            @product.category.should eql :category
        end

    end

end
