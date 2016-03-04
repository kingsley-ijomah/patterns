class ProductsController < ApplicationController
  def index
    @product = ProductsFacade.new
  end
end
