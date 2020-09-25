class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  
  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      @item.valid?
      render :new
    end
    
  end

  private

  def item_params
    params.require(:item).permit(:title, :price, :text, :image, :category_id, :lead_time_id, :shop_from_id, :status_id, :deliver_fee_id).merge(user_id: current_user.id)
  end
end
