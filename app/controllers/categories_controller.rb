class CategoriesController < ApplicationController

  # FIXME ccm: Change from hard coding category.
  def index
    # @categories             = Category.all
    # FIXME ccm: Add .order('') here, out of view.
    # This is not doing the trick:
    @categories             = Category.select('id, name').order('id ASC')
    # @categories             = Category.select('id, name')
    @automotive_services    = @categories[0]
    @beauty                 = @categories[1]
    @business               = @categories[2]
    @dating                 = @categories[3]
    @dining                 = @categories[4]
    @education_and_training = @categories[5]
    @farming_livestock      = @categories[6]
    @for_sale               = @categories[7]
    @healthcare             = @categories[8]
    @home                   = @categories[9]
    @top_industries         = @categories[10]
    @jobs                   = @categories[11]
    @local_services         = @categories[12]
    @meet_up                = @categories[13]
    @new_cars               = @categories[14]
    @part_time_jobs         = @categories[15]
    @pets_pet_products      = @categories[16]
    @real_estate            = @categories[17]
    @recreation             = @categories[18]
    @resumes                = @categories[19]
    @ticketing              = @categories[20]
    @tourism                = @categories[21]
    @used_cars              = @categories[22]
  end

  def show
    @listings = Listing.where(category_id: params[:id])
  end
end
