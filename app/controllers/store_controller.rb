class StoreController < ApplicationController
  before_filter :set_cart
  def index
    @products = Product.paginate page: params[:page], per_page: 3, order: :title

  end

  def category
    @products = Product.find_all_by_category(params[:id])
    @category = params[:id]
  end
end
