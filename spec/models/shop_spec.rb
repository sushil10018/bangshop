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
end
