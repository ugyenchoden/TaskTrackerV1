class ApplicationController < BaseController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ profile_attributes: [:first_name, :last_name]])
  end
end
