class CartsController < ApplicationController
	include CurrentCart
	before_action :set_cart
	def show
	end
	def destroy
		@cart.destroy if @cart.id == session[:cart_id]
		session[:cart_id] = nil
		respond_to do |format|
			format.html { 
					redirect_to root_path
				}
			end
	end
	
end
