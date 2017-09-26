class ProductsController < ApplicationController

  def index
    @cart = self.cart
    render :index
  end

  def create
    @product = params[:product]
    session[:cart] << @product
    redirect_to '/'
  end

end
