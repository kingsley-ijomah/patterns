class ProductsFacade
  def all
    Product.all
  end

  def quantity_less_than(n)
    Product.where('quantity < ?', n)
  end

  def total
    Product.count
  end
end
