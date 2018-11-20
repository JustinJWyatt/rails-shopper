# Uses faker gem
require 'faker'

50.times do 

  title = ''

  price = Faker::Commerce.price(range = 0..10.0, as_string = false)

  loop do 
    title = Faker::Commerce.product_name

    break unless Product.exists?(title: title)
  end

  product = Product.create!(title: title, price: price, description: title)

  product.categories.find_or_create_by(title: Faker::Commerce.department)

  product.save

end


