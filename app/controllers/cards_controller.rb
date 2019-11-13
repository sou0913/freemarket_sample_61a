class CardsController < ApplicationController
  require "payjp"
  require "dotenv"
  Dotenv.load
  before_action :set_card, except: :create
  before_action :pay_key, only: [:create, :show, :destroy]
  before_action :user_set, only: [:index, :new, :show]

  def index
  end

  def new
  end

  def create
    customer = Payjp::Customer.create(card: params["payjp-token"])
    # 新規登録完成後、current_user.idへ
    @card = Card.new(user_id: 1, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to action: "index"
    else 
      redirect_to action: "new"
    end
  end

  def show
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @card_infomation = customer.cards.retrieve(@card.card_id)
  end

  def destroy
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    if @card.destroy
      redirect_to action: "index"
    end
  end

  private 

  def set_card
    # 新規登録完成後、current_userへ
    @card = Card.where(user_id: 1).first
  end

  def pay_key 
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
  end

  def user_set
    @user = User.find(1)
  end

end
