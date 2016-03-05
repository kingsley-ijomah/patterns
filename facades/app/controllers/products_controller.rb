class ProductsController < ApplicationController
  def index
    @product = ProductsFacade.new
  end

  def new
    @product = Product.new
  end

  def create
    if CreateProductService.build.call(product_params)  
      redirect_to root_url  
    else
      render 'new'
    end
  end

    private

    def product_params
      params.require(:product).permit(:id, :name, :price, :quantity)
    end
  end
