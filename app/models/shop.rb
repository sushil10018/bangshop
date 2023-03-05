class Shop < ApplicationRecord
  validates :name, :latitude, :longitude, presence: true

  belongs_to :category
end
