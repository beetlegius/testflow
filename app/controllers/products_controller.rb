class ProductsController < ApplicationController
  load_and_authorize_resource

  def index
    @products = @products.includes(:category)
  end

  def show
  end

  def new
    render :form
  end

  def create
    @product = Product.new product_params
    @product.save!
    redirect_to edit_product_path(@product), notice: 'Se creó OK'
  end

  def edit
    render :form
  end

  def update
    @product.update! product_params
    redirect_to edit_product_path(@product), notice: 'Se actualizó OK'
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'El producto fue eliminado'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end

end
