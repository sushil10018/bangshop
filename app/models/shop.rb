class Shop < ApplicationRecord
  validates :name, :latitude, :longitude, presence: true

  belongs_to :category
  delegate :name, to: :category, prefix: true

  def self.markers_hash
    Shop.includes(:category).all.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        shop_name: shop.name,
        category_name: shop.category_name
      }
    end
  end

  def icon_path
    ActionController::Base.helpers.asset_path("#{category_name.parameterize}.png")
  end
end
