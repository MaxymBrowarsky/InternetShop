class ProductsController < ApplicationController
	include CurrentCart
	before_action :set_cart
	
	def index
		if params[:set_category]
			@category = params[:set_category]
			if @category == '' 
				@products = Product.paginate(:page => params[:page], :per_page => 1)
			else
				@category_name = Category.find(@category) 
				@products = @category_name.products.paginate(:page => params[:page], :per_page => 1)
			end
		else
			@products = Product.paginate(:page => params[:page], :per_page => 1)
		end
		

	end
	def new
		@product = Product.new
	end
	def create
		
		@product = Product.create(product_params)
		if @product.save
			redirect_to root_path
		else
			render 'new'
		end		
	end
	def destroy
	end
	def show
		@product = Product.find(params[:id])
	end

	private 
	def product_params

		params.require(:product).permit(:category_id, :name, :description, :price, :amount, :img, :img_cache)
	end	

end
