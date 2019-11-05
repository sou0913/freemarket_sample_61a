class UsersController < ApplicationController

  def show
    # 管理者
    @user = User.find(1)
  end

  def logout
  end
  
  def edit
  end

end
