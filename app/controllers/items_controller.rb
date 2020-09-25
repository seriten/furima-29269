class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  
  def create
    Item.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:title, :price, :text, :image, :category_id, :lead_time_id, :shop_from_id, :status_id, :deliver_fee_id).merge(user_id: current_user.id)
  end
end
