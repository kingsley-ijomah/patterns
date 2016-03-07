class CreateProductForm
  include ActiveModel::Model

  attr_accessor :name, :price, :quantity

  validates :name, :price, :quantity, presence: true

  def self.build
    new
  end

  def call(params)
    @params = params
    mass_assign_attributes
    
    if valid?
      [true, product]
    else
      [false, self]
    end
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "Product")
  end

  private

  attr_reader :params

  def mass_assign_attributes
    params.each do |k,v|
      self.send("#{k}=", "#{v}")
    end
  end

  def product
    Product.new(params)
  end

end
