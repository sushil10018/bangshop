class ShopsController < ApplicationController
  def index
    @markers = Shop.markers_hash
  end
end
