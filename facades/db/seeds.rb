15.times do |n|
  Product.create(name: "product - #{n}", price: rand(2.00...40.99), quantity: rand(89))
end
