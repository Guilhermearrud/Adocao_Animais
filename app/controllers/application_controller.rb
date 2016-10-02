class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :login, :email, :password, :password_confirmation, :birthday, :celphone, :numberphone, :avatar, :avatar_cache, :zipcode, :street, :number, :complement, :neighborhood, :city, :state) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:login, :email, :password, :password_confirmation, :name, :birthday, :celphone, :numberphone, :current_password, :avatar, :avatar_cache, :zipcode, :street, :number, :complement, :neighborhood, :city, :state) }
  end
end
#mesma coisa do home_controller

