class HomeController < ApplicationController
  def index
   session[:cart_id] = nil
  end
end
