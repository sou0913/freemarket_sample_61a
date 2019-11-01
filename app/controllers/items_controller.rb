class ItemsController < ApplicationController

  def new
    @item = Item.new
    @item.images.build
  end
  def create
    binding.pry
  end

end
