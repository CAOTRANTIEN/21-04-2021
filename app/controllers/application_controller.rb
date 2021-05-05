
class ApplicationController < ActionController::Base
  before_action :set_locale  
  private
  def set_locale
    cookies[:locale] ||=:en
    I18n.locale = cookies[:locale].to_sym ||:en
  end
 end
 
