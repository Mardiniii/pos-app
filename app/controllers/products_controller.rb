class ProductsController < ApplicationController
	before_action :authenticate_user!
	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.user_id = current_user.id
		if @product.save
			redirect_to @product
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product			
		end
	end

	def index
		@products = Product.all
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private
		def product_params
  		params.require(:product).permit(:name, :precio, :category_id, :establishment_id)
		end
end