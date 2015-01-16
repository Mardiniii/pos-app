class OrdersController < ApplicationController
	def index
		@tables = current_user.establishments
	end
end
