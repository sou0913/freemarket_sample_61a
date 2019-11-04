class ItemsController < ApplicationController
  
  def index
  end
  
  def new
    @item = Item.new
    @item.images.build
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
    count = @item.images.count
    (10 - count).times { @item.images.build }
  end

  def create_items_params
    # 認証機能できたらcurrent_userに変更する
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :shipping_method, :price, images_attributes: [:image]).merge(user_id: 1)
  end

end
