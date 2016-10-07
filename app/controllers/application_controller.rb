class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  helper_method :current_user

  def set_locale
    I18n.locale = 'pt_br'
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login', :notice => I18n.t('Access denied') unless current_user
  end
end
