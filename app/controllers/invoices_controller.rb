class InvoicesController < ApplicationController
	def generate_invoice
		@invoice = Invoice.new
		@order = Order.find(params[:order_id])
		@op_ids = InvoiceProduct.all.pluck :order_product_id
	end

	def create
		@params = invoice_params
		puts "#{invoice_params}!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		@invoice = Invoice.new(invoice_params)
		if @invoice.save
			@order = Order.find(@invoice.order_id)
			puts "Order Total: #{@order.total} !!!!!!!!!!!!"
			puts "PAY VALUE: #{@order.pay_value}!!!!!!!!!!!!!!!!"
			if @order.total == @order.pay_value
				@order.state = 4
				@order.save
			else
				@order.state = 3
				@order.save
			end
		end
	end

	def index
	end

	private
		def invoice_params
			params.require(:invoice).permit( :order_id, invoice_products_attributes: [ :order_product_id, :_destroy ])
		end
end
