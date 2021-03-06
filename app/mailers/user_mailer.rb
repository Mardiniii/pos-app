class UserMailer < ApplicationMailer
	default from: "POS-App<info@pos-app.com>"
	def contact(name,email,phone,text)
	    @name = name
	    @email = email 
	    @phone = phone
	    @text = text
	    mail(to: @email,subject:"POS-App - Hemos recibido tu formulario de contacto")
	end

	def welcome_email(params)
	  @user = params
	  mail(to: @user.email,subject:"Bienvenido a POS-App")
	end
end