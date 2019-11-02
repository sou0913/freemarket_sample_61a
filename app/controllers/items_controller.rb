class ItemsController < ApplicationController

  def index
    @items = Item.limit(10).order('id')
  end

  def new
  end

end
