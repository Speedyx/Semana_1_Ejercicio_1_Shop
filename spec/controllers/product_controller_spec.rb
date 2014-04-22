require 'spec_helper'

describe ProductsController do
	describe "GET #show" do
		it "assigns the requested product to @product" do
			product = create :product
			get :show, id: product
			expect(assigns(:product)).to eql(product)
		end

		it "renders the :show template" do
			product = create :product
			get :show, id: product
			expect(response).to render_template :show
		end

	end

end
