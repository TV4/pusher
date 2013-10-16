class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :enforce_http_auth

  protected

  def enforce_http_auth
    return true unless Rails.env == 'stage' || Rails.env == 'production'

    authenticate_or_request_with_http_basic do |id, password|
      id == ENV['HTTP_AUTH_USER'] && password == ENV['HTTP_AUTH_PASSWORD']
    end
  end

end
