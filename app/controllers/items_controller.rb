class ItemsController < ApplicationController
  def index
  end
  def new
    @item = Item.new
    @item.images.build
  end
  def create
    binding.pry
    Item.create(create_items_params)
  end
  def create_items_params
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :price, images_attributes: [:image])
  end

end
