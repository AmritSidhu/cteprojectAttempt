class ProductsController < ApplicationController

  def new
  end

  def create
    @product = current_user.products.create(product_params)
    if @product.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_url)
  end
end
