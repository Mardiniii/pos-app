class ProductIngredientsController < ApplicationController
	before_action :authenticate_user!
	def new
		@item = ProductIngredient.new
	end

	def create
		@item = ProductIngredient.new(item_params)
		if @item.save
			redirect_to @item.product
		end
	end

	def show
		@item = ProductIngredient.find(params[:id])
	end

	def edit
		@item = ProductIngredient.find(params[:id])
	end

	def update
		@item = ProductIngredient.find(params[:id])
		if @item.update(item_params)
			redirect_to @item.product			
		end
	end

	def index
		@items = ProductIngredient.all
	end

	def destroy
		@item = ProductIngredient.find(params[:id])
		@item.destroy
		redirect_to products_path
	end

	private
		def item_params
  		params.require(:product_ingredient).permit(:product_id, :ingredient_id, :quantity)
		end
end
