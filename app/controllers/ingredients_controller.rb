class IngredientsController < ApplicationController
	before_action :authenticate_user!
	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to @ingredient
		end
	end

	def show
		@ingredient = Ingredient.find(params[:id])
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		if @ingredient.update(ingredient_params)
			redirect_to @ingredient			
		end
	end

	def index
		@ingredients = Ingredient.all
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to ingredients_path
	end

	private
		def ingredient_params
  		params.require(:ingredient).permit(:name, :unit_of_measurement)
		end
end
