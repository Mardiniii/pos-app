class WelcomeController < ApplicationController
	def index
	end
	def home 
	end

	def contact
		UserMailer.contact(params[:name],params[:email],params[:phone],params[:text]).deliver_now
	end
end
