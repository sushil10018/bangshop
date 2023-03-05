require 'rails_helper'

RSpec.describe Shop, type: :model do
  it "has name, latitude, longitude, and category" do
    shop = Shop.new
    expect(shop).not_to be_valid
    expect(shop.errors[:name]).to include("can't be blank")
    expect(shop.errors[:latitude]).to include("can't be blank")
    expect(shop.errors[:longitude]).to include("can't be blank")
    expect(shop.errors[:category]).to include("must exist")
  end

  it 'returns the markers hash of all shops' do
    nails = Category.create(name: 'Nails')
    Shop.create(name: 'Nail Shop', latitude: 13.5007, longitude: 100.3634, category: nails)
    Shop.create(name: 'Saam Song Shop', latitude: 13.7307, longitude: 100.4534, category: nails)

    hair_removal = Category.create(name: 'Hair removal')
    Shop.create(name: 'Hair Removal Shop', latitude: 13.2307, longitude: 100.1234, category: hair_removal)

    expect(Shop.markers_hash).to eq [
      {lat: 13.5007, lng: 100.3634, shop_name: 'Nail Shop', category_name: 'Nails'},
      {lat: 13.7307, lng: 100.4534, shop_name: 'Saam Song Shop', category_name: 'Nails'},
      {lat: 13.2307, lng: 100.1234, shop_name: 'Hair Removal Shop', category_name: 'Hair removal'}
    ]
  end
end
