class ItemsController < ApplicationController
    def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to products_path
  end

  def destroy
    @item.destroy(item_params)
    redirect_to products_path
  end

  private

  def item_params
    params.require(:items).permit(:name, :description, :price, :category, :brand, :color)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
