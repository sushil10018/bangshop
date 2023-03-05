require 'faker'

categories = ['Spa and massage', 'Nails', 'Hair removal', 'Barbershop']

categories.each do |category|
  Category.create(name: category)
end

1000.times do
  Shop.create(
    name: Faker::Company.name,
    latitude: rand(13.5007..13.9780), # approximate latitude range for Bangkok
    longitude: rand(100.3634..100.9518), # approximate longitude range for Bangkok
    category: Category.all.sample
  )
end
