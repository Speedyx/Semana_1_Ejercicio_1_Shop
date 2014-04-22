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

    it "responds to name" do
        should respond_to(:name)
    end
    it "responds to surname" do
        should respond_to(:surname)
    end
    it "responds to email" do
        should respond_to(:email)
    end
    it "responds to password_digest" do
        should respond_to(:password_digest)
    end
    it "responds to password" do
        should respond_to(:password)
    end
    it "responds to password_confirmation" do
        should respond_to(:password_confirmation)
    end
    it "not responds to zzz" do
        should_not respond_to(:zzz)
    end

end
