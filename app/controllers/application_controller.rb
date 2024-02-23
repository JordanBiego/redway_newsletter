class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def after_sign_in_path_for(_resource)
    admin_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
