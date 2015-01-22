class EstablishmentsController < ApplicationController
	before_action :authenticate_user!
	def new
		@establishment = Establishment.new
	end

	def create
		@establishment = Establishment.new(establishment_params)
		@establishment.user_id = current_user.id
		if @establishment.save
			redirect_to @establishment
		end
	end

	def show
		@establishment = Establishment.find(params[:id])
	end

	def edit
		@establishment = Establishment.find(params[:id])
	end

	def update
		@establishment = Establishment.find(params[:id])
		if @establishment.update(establishment_params)
			redirect_to @establishment			
		end
	end

	def index
		@establishments = Establishment.all
	end

	def destroy
		@establishment = Establishment.find(params[:id])
		@establishment.destroy
		redirect_to establishments_path
	end

	private
		def establishment_params
  		params.require(:establishment).permit(:name, :address, :phone, :tables_number, :seats_number, :avatar)
		end
end