class UsersController < ApplicationController

  def show
    # 管理者
    @user = User.find(1)
  end

  def logout
  end
  
  def edit
  end

  def listing
    # 後々current_userに変更
    @user = User.find(params[:id])
    @items = @user.items
  end

  def in_progress
  
  end

  def completed
  
  end
end
