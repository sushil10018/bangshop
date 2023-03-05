class Shop < ApplicationRecord
  validates :name, :latitude, :longitude, presence: true

  belongs_to :category

  def self.markers_hash
    Shop.includes(:category).all.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        shop_name: shop.name,
        category_name: shop.category.name
      }
    end
  end
end
