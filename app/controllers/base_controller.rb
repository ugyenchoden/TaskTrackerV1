class BaseController < ActionController::API
  include ApiErrors::ErrorHandler
  include Renderer

  before_action :authenticate_user!
end