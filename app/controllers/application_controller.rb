class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :detect_device_variant



  private
    def detect_device_variant
      request.variant = :tablet if browser.tablet?
      request.variant = :desktop if !browser.mobile? && !browser.tablet?
    end

    def set_layout
      case request.variant
      when :tablet
        "tablet"
      when :desktop
        "desktop"
      else
        "application"
      end
    end
end
