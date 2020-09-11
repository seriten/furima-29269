class ApplicationController < ActionController::Base
  before_action :basic_auth
  

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'serina' && password == '00000620'
    end
  end
end