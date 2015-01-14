class WelcomeController < ApplicationController
	def home 
	end

	def contact
		UserMailer.contact(params[:name],params[:email],params[:phone],params[:text]).deliver_now
	end
end
