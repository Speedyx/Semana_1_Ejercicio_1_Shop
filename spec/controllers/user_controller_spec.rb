require 'spec_helper'

describe UsersController do

  let(:valid_attributes) { {
      "name" => "MiNombre",
      "surname" => "Mis Apellidos",
      "email" => "MiNombre@example.com",
      "password" => "pass1234",
      "password_confirmation" => "pass1234"
      #"password_digest" => "pass1234"
  } }


  def valid_session
    {}
  end

  describe "GET show" do
    it "user show succeeds" do
      user = User.create! valid_attributes
      get :show, :id => user.to_param
      assigns(:user).should eq(user)
    end
  end

  describe "PUT update" do
    it "user update succeeds" do
      user = User.create! valid_attributes
      put :update, {:id => user.to_param}, valid_session
      assigns(:user).should eq(user)
    end

    it "user update does not succeed" do
      user = User.create! valid_attributes
      User.stub(:update_attribute).and_return(false)
      put :update, {:id => user.to_param}, valid_session
      assigns(:user).should eq(user)
      response.should render_template("edit")
    end

  end

end