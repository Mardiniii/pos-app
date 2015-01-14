class WelcomeController < ApplicationController
	def home 
	end

	def contact
		redirect_to root_path
	end
end
