class ApplicationController < ActionController::Base
    include Pagy::Backend
    private
     
    def current_giohang
        Giohang.find(session[:giohang_id])
    rescue ActiveRecord::RecordNotFound
        giohang = Giohang.create
        session[:giohang_id] = giohang.id
        giohang
    end
    before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end