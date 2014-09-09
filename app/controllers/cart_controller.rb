class CartController < ApplicationController
  def add
    if params[:item_id]
      session[:cart] ||= []
      session[:cart]<<params[:item_id]
    end
    redirect_to :action => 'show'
  end

  def delete
    if params[:item_id] and session[:cart].respond_to?(:delete)
      session[:cart].delete(params[:item_id])
    end
    redirect_to :action => 'show'
  end

  def show
    if session[:cart]
      @items = Item.find(session[:cart])
    else
      @items = []
    end
  end
end
