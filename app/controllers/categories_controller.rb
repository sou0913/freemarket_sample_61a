class CategoriesController < ApplicationController

  def index
  end

  def show
    @category = Category.find(params[:id])
    # 親子関係完成したら復活
    # children = @category.children
    # wanted_id = []
    # children.each do |child|
    #   wanted_id.push(child.children.ids)
    #   wanted_id.flatten!
    # end
    # @items = Item.where(category_id: wanted_id)
    @items = Item.where(category_id: params[:id])
  end


end
