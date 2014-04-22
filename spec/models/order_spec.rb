# spec/models/order_spec.rb
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

    it { should respond_to(:status) }
    it { should respond_to(:payment) }
    it { should respond_to(:address) }
    it { should respond_to(:city) }
    it { should respond_to(:name) }
    it { should respond_to(:surname) }
    it { should_not respond_to(:zzz) }

    it { FactoryGirl.build(:order).should be_valid }
    it { FactoryGirl.build(:order, status: "").should be_valid }
    it { FactoryGirl.build(:order, status: "Waiting").should be_valid }
    it { FactoryGirl.build(:order, status: "AAA").should be_valid }
    it { FactoryGirl.build(:order, payment: "AAA").should_not be_valid }

end
