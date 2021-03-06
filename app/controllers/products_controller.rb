class ProductsController < ApplicationController
	before_action :authenticate_user!
	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
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

	def products_by_categorie
		categorie_name = params[:categorie]
		@categorie = Categorie.find_by(name: categorie_name)
		@products = Product.where(categorie_id: @categorie.id)
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private
		def product_params
  		params.require(:product).permit(:name, :precio, :categorie_id, :establishment_id, :avatar)
		end
end