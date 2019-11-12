class CardsController < ApplicationController
  require "payjp"

  def index
    @card = Card.where(user_id: 1).first
  end

  def new
    # 後で修正する
    # current_user.idへ
    @card = Card.where(user_id: 1).first
    # redirect_to action: "index" if @card.present?
  end

  def create
    # テスト秘密鍵
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    customer = Payjp::Customer.create(card: params["payjp-token"])
    @card = Card.new(user_id: 1, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to action: "index"
    else 
      redirect_to action: "new"
    end
  end

  def show
    @card = Card.where(user_id: 1).first
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @card_infomation = customer.cards.retrieve(@card.card_id)
  end

  def destroy
    @card = Card.where(user_id: 1).first
    Payjp.api_key = "sk_test_daf29bfafb257c13449505f8"
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    if @card.destroy
      redirect_to action: "index"
    end
  end

end
