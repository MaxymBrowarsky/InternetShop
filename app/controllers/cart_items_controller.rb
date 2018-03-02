class CartItemsController < ApplicationController
	include CurrentCart 
	before_action :set_cart, only: [:create]
	before_action :set_cart_item, only: [:show, :edit, :update, :destroy]

	
	def index
		@cart_items = CartItem.all
	end
	def new
		@cart_item = CartItem.new
	end
	def edit
	end

	def create
		
		product = Product.find(params[:product_id])


		@cart_item = @cart.add_product(product.id)
		respond_to do |format|
			if @cart_item.save
			
				format.html { 
					redirect_to root_path,
					notice: "item create"
				}
			else
				format.html {
					redirect_to root_path,
					notice: "error"
				}
			end
		end
	end
	private
	def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

	# def cart_item_params
	# 	params.require(:product).permit(:product_id, :cart_id)
	# end
end
