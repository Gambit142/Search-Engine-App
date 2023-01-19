class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    exception.message = "You are not authorized to access this page."
    respond_to do |format|
      format.html { redirect_to main_app.root_url, notice: exception.message, status: :not_found }
    end
  end

  protected

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || articles_path
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation)}
  end
end
