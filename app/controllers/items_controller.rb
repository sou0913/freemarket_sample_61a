class ItemsController < ApplicationController
  
  def show
    
  end
  
  def index
    @items = Item.limit(10).order('id')
  end 
  def new
    @item = Item.new
    10.times { @item.images.build }
    # 写真0枚のエラーメッセージ用
    @image = Image.new
  end
  
  def create
    @item = Item.new(create_items_params)
    # 写真0枚のエラーメッセージ用
    @image = Image.new
    if @item.save
      redirect_to :root
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id]) 
    10.times { @item.images.build }
  end

  def update
    item = Item.find(params[:id])
    # 写真0枚のエラーメッセージ用
    @image = Image.new
    if item.update(update_items_params)
      redirect_to :root
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    # 管理者
    user = User.find(1)
    if @item.destroy
      redirect_to listing_user_path(user)
    else
      redirect_to listing_user_path(user)
    end
  end

  def my_item
    @item = Item.find(params[:id])
  end

  private

  def create_items_params
    # 認証機能できたらcurrent_userに変更する
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :shipping_method, :price, images_attributes: [:image]).merge(user_id: 1)
  end

  def update_items_params
    # 認証機能できたらcurrent_userに変更する
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :shipping_method, :price, images_attributes: [:image, :id, :_destroy]).merge(user_id: 1)
  end

end
