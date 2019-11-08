# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'sign_up', only: [:new, :sms]

  def index
  end

  def new
    @user = User.new # 新規インスタンス作成
  end

  def sms
    # newで入力された値をsessionに保存
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:family_name] = user_params[:family_name]
    session[:first_name] = user_params[:first_name]
    session[:family_kana] = user_params[:family_kana]
    session[:first_kana] = user_params[:first_kana]
    session[:birthday] = user_params[:birthday]
    @user = User.new # 新規インスタンス作成
  end

  private
  # 許可するキーを設定します
  def user_params
    params.require(:user).permit(
      :nickname, 
      :profile,
      :image,
      :email, 
      :password, 
      :password_confirmation, 
      :family_name, 
      :first_name,
      :family_kana,
      :first_kana, 
      :birthday,
      :postal_code, 
      :prefectures,
      :city,
      :house_number,
      :building_name,
  )
  end
  
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
