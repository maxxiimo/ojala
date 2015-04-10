class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html
      format.html.phone
      format.html.tablet
    end
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
