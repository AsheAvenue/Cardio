class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  
  def authenticate
    if Settings.auth.enabled
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == Settings.auth.username && password == Settings.auth.password
      end
    else
      true
    end
  end
  
end
