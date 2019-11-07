class CategoriesController < ApplicationController

  def index
  end

  def show
    @category = Category.find(params[:id])
    children = @category.children
    wanted_id = []
    children.each do |child|
      wanted_id.push(child.children.ids)
      wanted_id.flatten!
    end
    @items = Item.where(category_id: wanted_id)
  end


end
