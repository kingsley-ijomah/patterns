class CreateProductForm
  include ActiveModel::Model

  attr_accessor :name, :price, :quantity

  def self.build
    new
  end

  def call(params)
    @params = params

    if product.valid?
      [true, product]
    else
      [false, product]
    end
  end

  private

  attr_reader :params

  def product
    @product ||= Product.new(params)
  end
end
