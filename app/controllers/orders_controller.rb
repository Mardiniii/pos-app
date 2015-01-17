class OrdersController < ApplicationController
	def index
		@tables = current_user.establishment.tables_number
	end

	def new
		@mesa = params[:mesa]
		@categories = Categorie.all
	end
end
