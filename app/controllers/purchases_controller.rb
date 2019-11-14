class PurchasesController < ApplicationController
  require "payjp"
  require "dotenv"
  Dotenv.load
  before_action :set_item

  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      customer: current_user.cards[0].customer_id,
      currency: 'jpy'
    )
    Purchase.create(item_id: @item.id, user_id: current_user.id)
    @item.update(dealing: 1)
    redirect_to action: :show, id: @item.id
  end

  def create
  end

  def new
  end

  def show
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

end
