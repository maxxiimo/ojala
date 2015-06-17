class CategoriesController < ApplicationController

  # FIXME ccm: Change from hard coding category.
  def index
    # @categories             = Category.all
    @categories             = Category.select('ID, name')
    @automotive_services    = @categories[0]
    @beauty                 = @categories[1]
    @business               = @categories[2]
    @dating                 = @categories[3]
    @dining                 = @categories[4]
    @education_and_training = @categories[5]
    @farming_livestock      = @categories[6]
    @for_sale               = @categories[7]
    @healthcare             = @categories[8]
    @top_industries         = @categories[9]
    @jobs                   = @categories[10]
    @local_services         = @categories[11]
    @meet_up                = @categories[12]
    @new_cars               = @categories[13]
    @part_time_jobs         = @categories[14]
    @pets_pet_products      = @categories[15]
    @real_estate            = @categories[16]
    @recreation             = @categories[17]
    @resumes                = @categories[18]
    @ticketing              = @categories[19]
    @tourism                = @categories[20]
    @used_cars              = @categories[21]
  end

  def show
  end

  def new
  end

  def edit
  end
end
