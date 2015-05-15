class PagesController < ApplicationController
  layout :set_layout

  def splash
    render "pages/mock/splash"
  end

  def home
    render "pages/mock/home"
  end

  def about
  end

  def terms
  end

  def privacy
  end

  def contact
  end
end
