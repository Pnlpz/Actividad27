class ProductsController < ApplicationController

  def show
  @product = Product.new
  end

  def create
  @product = Product.new(params[:product])
  @product.save
  redirect_to category_path(:id)
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :product)
  end

end
