class ItemsController < ApplicationController
  def index
  end
  def new
    @item = Item.new
    @item.images.build
  end
  def create
    @item = Item.new(create_items_params)
    # binding.pry
    @item.save
  end
  def create_items_params
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :price, images_attributes: [:image]).merge(shipping_method: 0, user_id: 1)
  end

end
