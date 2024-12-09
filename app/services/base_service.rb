class BaseService
  include ActionView::Helpers::TranslationHelper
  include Rails.application.routes.url_helpers
  include ActiveSupport::Callbacks
  include Assigner

  attr_accessor :attributes, :current_user

  define_callbacks :call

  def initialize(attributes = {})
    assign_attributes(attributes)
  end

  def call
    run_callbacks :call do
      yield if block_given?
    end
  end

end