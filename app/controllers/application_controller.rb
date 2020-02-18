class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #ログイン後にプロフィール画面へ
  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  protected    

  def configure_permitted_parameters
    added_attrs = [ :name, :email, :introduce, :learning_start, :school_id, :profile_image, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
