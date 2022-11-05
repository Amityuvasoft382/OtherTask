class ProductsController < ApplicationController
	before_action :set_product, only: %i[ show edit update destroy ]
	def index
		@products = Product.all
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		#debugger
		@product.save
		@products = Product.all
	end

	def show
		@product =Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product=Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product      
		else
			render :edit ,status: :unprocessable_entity
		end
	end

	def destroy
		# debugger
		@product= Product.find(params[:id])
		@product.destroy
		@products = Product.all
		respond_to do |format|
			format.js
		end

		# redirect_to root_path, status: :see_other


	end
	def like
		@product = Product.find(params[:id])
		Like.create(user_id:current_user.id, product_id:@product.id)

	end


	private
	def product_params
		params.require(:product).permit(:id, :p_name, :c_name,:s_price, :qui, :p_type, :date_of_purchase,:user_id, :image )
	end
	def set_product
		@product = Product.find(params[:id])
	end
end
