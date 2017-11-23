require 'uri'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :url_host

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def url_host(url)
    uri = URI(url)
    uri.host
  end
end
