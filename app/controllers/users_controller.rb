class UsersController < ApplicationController

  def show
  end

  def logout
  end
  
  def edit
  end

  def listing
    # 後々current_userに変更
    user = User.find(params[:id])
    @items = user.items
  end

  def in_progress
  
  end

  def completed
  
  end
end
