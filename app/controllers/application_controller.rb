class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
=======
  # check strong parameters for devise users.
  # this prevents bad values from being passed into our models.
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # this protected method determines the parameters allowed for devise users.
  # these are all the legal inputs for devise forms.
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end
>>>>>>> 5e72d4cf8f03d7bd0d6dcaa4ef76f3799bce48bf
end
