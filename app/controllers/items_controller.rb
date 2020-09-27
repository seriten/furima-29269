class ItemsController < ApplicationController
  def index
    query = "SELECT * FROM items" 
    @items = Item.find_by_sql(query)
  end

  def new
    @item = Item.new
  end

  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      @item.valid?
      render :new
    end
  end

    def show
   @item = Item.find(params[:id])
    end

  private

  def item_params
    params.require(:item).permit(:title, :price, :text, :image, :category_id, :lead_time_id, :shop_from_id, :status_id, :deliver_fee_id).merge(user_id: current_user.id)
  end
end
