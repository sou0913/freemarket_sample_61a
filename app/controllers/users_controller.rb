class UsersController < ApplicationController

  def show
    # 管理者
    @user = User.find(params[:id])
    @items = @user.items
  end

  def logout
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def listing
    # 後々current_userに変更
    @user = User.find(params[:id])
    @items = @user.items
  end

  def in_progress
  end

  def complete
  
  end

end
