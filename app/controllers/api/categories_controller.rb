class Api::CategoriesController < ApplicationController

  def index
    parent_id = params[:keyword].to_i
    parent = Category.find(parent_id)
    @children = parent.children
    @type = params[:type]
    render "index.js.erb"
  end
end