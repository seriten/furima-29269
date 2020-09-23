class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @@items = Item.new
  end

  def item_params
    params.require(:item).premit(:content, :image).merge(user_id: current_user.id)
end
