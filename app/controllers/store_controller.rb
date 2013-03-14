class StoreController < ApplicationController
  before_filter :set_cart
  def index
    @products = Product.order(:title)
  end
end
