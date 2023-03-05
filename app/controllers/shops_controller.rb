class ShopsController < ApplicationController
  def index
    @markers = Rails.cache.fetch('markers_hash', expires_in: 1.day) do
      Shop.markers_hash
    end
  end
end
