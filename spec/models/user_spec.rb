# spec/models/user_spec.rb
require 'spec_helper'

describe User do
    describe "#new" do
        it "returns a new user object" do
            should be_an_instance_of User
        end

        it "Is invalid" do
            should_not be_valid
        end

    end

    describe "#create" do
        it "change number or users" do
            #user = User.new(:name => "MyName", :surname => "MySurname", :email => "MyName@domain.com", :password_digest => "pass1234")
            user = User.new(:name => "MyName", :surname => "MySurname", :email => "MyName@domain.com", :password => "pass1234", :password_confirmation => "pass1234")
            expect {user.save}.to change {User.count}.by(1)
        end

    end

    it { should respond_to(:name) }
    it { should respond_to(:surname) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should_not respond_to(:zzz) }

    it { FactoryGirl.build(:user).should be_valid }
    it { FactoryGirl.build(:user, email: nil).should_not be_valid }
    it { FactoryGirl.build(:user, password: "12345678").should_not be_valid }
    it { FactoryGirl.build(:user, password: "password").should_not be_valid }

end
