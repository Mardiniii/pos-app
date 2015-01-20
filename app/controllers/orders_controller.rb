class OrdersController < ApplicationController
	def index
		@orders = Order.where(state: !4)
		@tables = current_user.establishment.tables_number
	end

	def new
		@mesa = params[:mesa]
		@categories = Categorie.all
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		@order.establishment = current_user.establishment
		@order.state = 0
		@order.save
		redirect_to edit_order_path(@order)
	end

	def edit
		@mesa = params[:mesa]
		@categories = Categorie.all
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(order_params)
			redirect_to edit_order_path(@order)
		end
	end

	def add_item
		@o_id = params[:order_id] 
		@p_id = params[:product_id]
		@order = Order.find(@o_id)
		@product = Product.find(@p_id)
		@order_product = OrderProduct.create(order_id:@o_id,product_id:@p_id)
	end

	def remove_item
		@op_id = params[:op_id]
		@order_product = OrderProduct.find(@op_id)
		@order = Order.find(@order_product.order_id)
		@order_product.destroy
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to orders_path
	end

	private
		def order_params
			params.require(:order).permit(:table, order_products_attributes: [ :order_id, :product_id, :_destroy ])
		end
end
