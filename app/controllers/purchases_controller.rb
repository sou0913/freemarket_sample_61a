class PurchasesController < ApplicationController
  require "payjp"
  require "dotenv"
  Dotenv.load

  def item_infomation
    @item = Item.where(params[:item_id]).first
  end

  def new
    item_infomation
  end

  def pay
    item_infomation
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    charge = Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to root_path
  end
end
