class InventariosController < ApplicationController
	before_action :authenticate_user!
	def new
		@item = EstablishmentIngredient.new
	end

	def create
		@item = EstablishmentIngredient.new(item_params)
		if @item.save
			redirect_to inventarios_path
		end
	end

	def show
		@item = EstablishmentIngredient.find(params[:id])
	end

	def edit
		@item = EstablishmentIngredient.find(params[:id])
	end

	def update
		@item = EstablishmentIngredient.find(params[:id])
		if @item.update(item_params)
			redirect_to inventarios_path
		end
	end

	def index
		@items = EstablishmentIngredient.all
	end

	def destroy
		@item = EstablishmentIngredient.find(params[:id])
		@item.destroy
		redirect_to ingredients_path
	end

	private
		def item_params
  		params.require(:establishment_ingredient).permit(:establishment_id, :ingredient_id, :quantity)
		end
end