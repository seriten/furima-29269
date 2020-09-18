class ApplicationController < ActionController::Base
  before_action :basic_auth
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :family_name, :first_name, :family_kana, :first_kana, :birthday])
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'serina' && password == '00000620'
    end
  end
end
