class PurchasesController < ApplicationController
  require "payjp"
  require "dotenv"
  Dotenv.load
  before_action :set_item

  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
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
