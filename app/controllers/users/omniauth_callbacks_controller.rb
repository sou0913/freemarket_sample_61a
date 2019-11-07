# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_for(:facebook)
  end

  def google_oauth2
    callback_for(:google)
  end

  private

  def callback_for(provider)
    provider = provider.to_s
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      # データベースに保存済みか確認
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else
      # 新規登録
      session[:nickname] = @user.nickname
      session[:email]    = @user.email
      session[:provider] = @user.provider
      session[:uid]      = @user.uid
      redirect_to new_user_registration_path
    end

    def failurere
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
