class CardsController < ApplicationController
  require "payjp"

  def index
    @card = Card.where(user_id: 1).first
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @card_infomation = customer.cards.retrieve(@card.card_id)
    # if @card.present?
    #   Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    #   customer = Payjp::Customer.retrieve(@card.customer_id)
    #   @card_infomation = customer.cards.retrieve(@card.card_id)
    # end
  end

  def new
    # current_user.idへ
    @card = Card.where(user_id: 1).first
    redirect_to action: "index" if @card.present?
  end


  def create
    # テスト秘密鍵
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    customer = Payjp::Customer.create(card: params["payjp-token"])
    @card = Card.new(user_id: 1, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to root_path
    else 
      redirect_to action: "new"
    end
  end

  # def set_card 
  #   @card = Card.where(user_id: 1).first
  # end

  # def show
  #   # current_user.idへ
  #   card = Card.where(user_id: 1).first
  #   if card.blank?
  #     redirect_to action: "new"
  #   else
  #     Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
  #     customer = Payjp::Customer.retrieve(card.number)
  #     @default_card_info = customer.cards.retrieve(card.security_code)
  #   end
  # end

  # def buy
  #   if card.blank?
  #     redirect_to action: "new"
  #     flash[:alert] = "購入にはクレジットカードの登録が必要です"
  #   else 
  #     @item = Item.find(params[:id])
  #     card = Card.where(user_id: 1).first

  #     Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
  #     Payjp::Charge.create(
  #         amount: 1000,
  #         card: params['payjp-token'],
  #         currency: 'jpy'
  #       )
  #   end
  # end

  # def delete 
  #   # current_user.idへ
  #   card = Card.where(user_id: 1).first
  #   if card.blank?
  #     redirect_to action: "new"
  #   else
  #     Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
  #     customer = Payjp::Customer.retrieve(card.number)
  #     customer.delete
  #     card.delete 
  #   end
  # end

end
