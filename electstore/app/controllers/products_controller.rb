class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end
   
  def create
    @product = Product.new(product_params)
    @product.save
    @products = Product.all
  end

  def show
    @product =Product.find(params[:id])
    #@user= User.find_by(id: @product.user_id) 
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update(product_params)
        redirect_to @product
      else
        
        render :edit, status: :unprocessable_entity
      end
    end
  end



  def destroy
    @product= Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "product was successfully destroyed." }
      format.json { head :no_content }
    end

  end
  private
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:id,:p_name,:order,:c_name,:p_type, :price)
  end
end
