class ItemsController < ApplicationController

  before_action :set_item, only: [:edit,:update,:destroy,:my_item]

  def index
    # 開発中動作を確認しやすくするため最新の10個取得
    canBuy = Item.where(dealing: 0)
    @items        = canBuy.order(id: :desc).limit(8)
    @ladis         = canBuy.where(category_id: Category.find(1).subtree_ids).limit(8)
    @mens          = canBuy.where(category_id: Category.find(200).subtree_ids).limit(8)
    @toys          = canBuy.where(category_id: Category.find(685).subtree_ids).limit(8)
    @electronics   = canBuy.where(category_id: Category.find(898).subtree_ids).limit(8)
    @chanels       = canBuy.where(dealing: 0).ransack(brand_cont_any: ["シャネル","CHANEL"]).result.limit(8)
    @louisvuittons = canBuy.where(dealing: 0).ransack(brand_cont_any: ["ルイヴィトン","ルイ・ヴィトン","Louis Vuitton"]).result.limit(8)
    @nikes          = canBuy.where(dealing: 0).ransack(brand_cont_any: ["nike","NIKE","ナイキ"]).result.limit(8)
  end 

  def show
    @item = Item.find(params[:id])
    @items = Item.limit(6).order('id')
  end

  def new
    @item = Item.new
    10.times { @item.images.build }
    # 写真0枚のエラーメッセージ用
    @image = Image.new
    render :new, layout: "noheader"
  end
  
  def create
    @item = Item.new(create_items_params)
    # 写真0枚のエラーメッセージ用
    @image = Image.new
    if @item.save
      redirect_to :root
    end
  end

  def edit
    10.times { @item.images.build }
    render :edit, layout: "noheader"
  end

  def update
    # 写真0枚のエラーメッセージ用
    @image = Image.new
    if @item.update(update_items_params)
      redirect_to :root
    else
      render 'edit'
    end
  end

  def destroy
    # 管理者
    user = User.find(1) 
    if @item.destroy
      redirect_to listing_user_path(user)
    else
      flash.now[:alert] = "削除が失敗しました"
      render action: :index
    end
  end

  def my_item

  end

  def search
      if params[:q][:title_or_description_or_brand_cont].present?
        @name = params[:q][:title_or_description_or_brand_cont] + " の"
      end
      @items = @search.result
  end

  private

  def create_items_params
    # 認証機能できたらcurrent_userに変更する
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :shipping_method, :price, :category_id, :brand, images_attributes: [:image]).merge(user_id: 1)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def update_items_params
    # 認証機能できたらcurrent_userに変更する
    params.require(:item).permit(:title, :description, :status, :shipping_charge, :delivery_source, :shipping_day, :shipping_method, :price, :category_id, :brand, images_attributes: [:image, :id, :_destroy]).merge(user_id: 1)
  end

end
