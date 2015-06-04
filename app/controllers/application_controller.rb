class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :detect_device_variant
  before_action :configure_permitted_parameters, if: :devise_controller?





  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    # devise_parameter_sanitizer.for(:sign_in) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
  end

  private

  def detect_device_variant
    request.variant = :tablet if browser.tablet?
    request.variant = :desktop if !browser.mobile? && !browser.tablet?
  end

  def set_layout
    case action_name
    when "splash"
      "splash"
    end

    # NOTE ccm:  I want to be able to switch between layouts using variants.
    # Why do these not work?

    # if browser.tablet?
    #   "application"
    # elsif !browser.mobile? && !browser.tablet?
    #   "splash"
    # else
    #   "application"
    # end

    # case request.variant
    # when browser.tablet?
    #   "application"
    # when !browser.mobile? && !browser.tablet?
    #   "splash"
    # else
    #   "application"
    # end

    # if request.variant.tablet?
    #   "application"
    # elsif request.variant.desktop?
    #   "splash"
    # else
    #   "application"
    # end

    # if request.variant.include? :tablet
    #   "application"
    # elsif request.variant.include? :desktop
    #   "splash"
    # else
    #   "splash"
    # end

    # if params[:variant] == 'tablet'
    #   "application"
    # elsif params[:variant] == 'desktop'
    #   "splash"
    # else
    #   "splash"
    # end

    # case request.variant
    # when :tablet
    #   "tablet"
    # when :desktop
    #   "splash"
    # else
    #   "splash"
    # end
  end
end
