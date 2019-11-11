class PurchasesController < ApplicationController

  def new
    @item = Item.find(params[:item_id])
  end

  require "payjp"

  def pay
    item = Item.find_by(item_id: params[:id])
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    charge = Payjp::Charge.create(
      amount: item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to root_path
  end
end
