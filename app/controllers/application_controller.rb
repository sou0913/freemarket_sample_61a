class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :basic_auth
  protect_from_forgery 

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "43543"
    end
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :profile, :image,])
  end

end
