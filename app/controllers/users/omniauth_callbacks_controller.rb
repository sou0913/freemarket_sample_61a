# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_for :facebook
  end

  def google_oauth2
    callback_for :google
  end

  private

  def callback_for(provider)

    @user = User.from_omniauth(request.env["omniauth.auth"])
    # データベースに保存済みか確認
    if @user.persisted?
      # ログイン
      sign_in_and_redirect @user, event: :authentication
    else
      # 新規登録
      session[:password] = @user.password
      session[:password_confirmation] = @user.password
      session[:user_attributes] = @user
      redirect_to users_sns_path
    end

    def failure
      # コールバックにエラーが起きた場合、リダイレクトします
      redirect_to root_path
    end

  end
  
  
  
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
