class PurchasesController < ApplicationController
  require "payjp"
  require "dotenv"
  Dotenv.load
  before_action :set_item

  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    charge = Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to root_path
  end

  def new
  end

  private

  def set_item
    @item = Item.where(params[:item_id]).first
  end

end
