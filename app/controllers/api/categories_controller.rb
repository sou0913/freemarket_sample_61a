class Api::CategoriesController < ApplicationController

  def index
    # binding.pry
    parent_name = params[:keyword]
    parent = Category.find_by(name: parent_name)
    children = parent.children
    @data = []
    children.each do |child|
      @data.push(child.name)
    end
    # binding.pry
    render "index.js.erb"
  end
end