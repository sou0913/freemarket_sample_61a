class UsersController < ApplicationController
  def show
    # 管理者
    @user = User.find(1)
    @items = @user.items
  end

  def logout
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(update_params)
      redirect_to :root
    else
      render 'edit'
    end  
  end

  def listing
    @items = current_user.items.where(dealing: 0)
  end

  def in_progress
    @items = current_user.items.where(dealing: 1)
  end

  def complete
  end

  def private_information
  end
  
  def address
  end

  private

  def update_params
    params.require(:user).permit(:nickname, :profile)
  end

end
