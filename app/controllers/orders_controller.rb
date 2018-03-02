class OrdersController < ApplicationController
	include CurrentCart
	before_action :set_cart
	def new
		@order = Order.new
	end
	def create
		
		
		@order = Order.new(order_params)
		@order.add_cart_items_from_cart(@cart)
		
		
		if @order.save
			Cart.destroy(session[:cart_id])
			session[:cart_id] = nil

			redirect_to root_path
		else
			render 'new'
		end
	end
	

	private

	def order_params

		params.require(:order).permit(:user_id, :name, :surname, :address, :total_price)
		
	end


end
