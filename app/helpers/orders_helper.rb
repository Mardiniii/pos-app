module OrdersHelper
	def table_class(table)
		@orders.where(table: table).each do |order|
			if order.inprocess? || order.kitchen? || order.ready?
				return "table_busy"
			elsif order.checking?
				return "table_checking"
			end
		end
		return "table_available"
	end

	def recovery_order(table)
		@orders.where(table: table).each do |order|
			if order.inprocess? || order.kitchen? || order.ready? || order.checking?
				return link_to "<img src='http://www.crazy3dfree.com/uploads/100701/1_164217_1.jpg' class='image-responsive text-center' height='70' width='70'><p><strong>MESA ##{table}</strong></p>".html_safe, edit_order_path(order,:mesa => "#{table}")
			end
		end
		return link_to ("<img src='http://www.crazy3dfree.com/uploads/100701/1_164217_1.jpg' class='image-responsive text-center' height='70' width='70'><p><strong>MESA ##{table}</strong></p>").html_safe, new_order_path(:mesa => "#{table}")
	end

end