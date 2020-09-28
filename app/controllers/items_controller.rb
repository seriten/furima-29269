class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  def index
    @items = Item.includes(:user).order("created_at DESC")
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
    end

    def edit
    end

    def destroy
      @item.destroy
      redirect_to root_path
    end

    def update
      if @item.update(item_params)
        redirect_to root_path
      else
        render :edit
      end
    end

  private

  def item_params
    params.require(:item).permit(:title, :price, :text, :image, :category_id, :lead_time_id, :shop_from_id, :status_id, :deliver_fee_id).merge(user_id: current_user.id)
  end

  def set_item
    @item =Item.find(params[:id])
  end
end
