require 'spec_helper'

describe Order do

    describe "#new" do
        it "returns a new order object" do
            should be_an_instance_of Order
        end

        it "Is invalid" do
            should_not be_valid
        end

    end

    describe "#create" do
        it "change number or orders" do
            order = Order.new(:status => 'Waiting', :payment => 'Paypal', :address => 'My home', :city => 'My city', :name => 'My Name', :surname => 'My Surname', :created_at => '2014-03-23 15:15:15', :updated_at => '2014-03-23 15:15:15')
            expect {order.save}.to change {Order.count}.by(1)
        end

    end

    it "responds to status" do
        should respond_to(:status)
    end
    it "responds to payment" do
        should respond_to(:payment)
    end
    it "responds to address" do
        should respond_to(:address)
    end
    it "responds to city" do
        should respond_to(:city)
    end
    it "responds to name" do
        should respond_to(:name)
    end
    it "responds to surname" do
        should respond_to(:surname)
    end
    it "not responds to zzz" do
        should_not respond_to(:zzz)
    end

end
