class CreateProductForm
  include ActiveModel::Model

  validates :name, :price, :quantity, presence: true

  attr_accessor :name, :price, :quantity

  def self.build
    new
  end

  def call(params)
    @params = params
    if valid?
      [true, self]
    else
      [false, self]
    end
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "Product")
  end
end
