class CategoriesController < ApplicationController

  # FIXME ccm: Change from hard coding category.
  def index
    # @categories             = Category.all
    # FIXME ccm: Add .order('') here, out of view.
    # This is not doing the trick:
    @categories             = Category.select('id, name')
    # @categories             = Category.select('id, name')
    @automotive_services    = @categories[0].order('id ASC')
    @beauty                 = @categories[1].order('id ASC')
    @business               = @categories[2].order('id ASC')
    @dating                 = @categories[3].order('id ASC')
    @dining                 = @categories[4].order('id ASC')
    @education_and_training = @categories[5].order('id ASC')
    @farming_livestock      = @categories[6].order('id ASC')
    @for_sale               = @categories[7].order('id ASC')
    @healthcare             = @categories[8].order('id ASC')
    @home                   = @categories[9].order('id ASC')
    @top_industries         = @categories[10].order('id ASC')
    @jobs                   = @categories[11].order('id ASC')
    @local_services         = @categories[12].order('id ASC')
    @meet_up                = @categories[13].order('id ASC')
    @new_cars               = @categories[14].order('id ASC')
    @part_time_jobs         = @categories[15].order('id ASC')
    @pets_pet_products      = @categories[16].order('id ASC')
    @real_estate            = @categories[17].order('id ASC')
    @recreation             = @categories[18].order('id ASC')
    @resumes                = @categories[19].order('id ASC')
    @ticketing              = @categories[20].order('id ASC')
    @tourism                = @categories[21].order('id ASC')
    @used_cars              = @categories[22].order('id ASC')
  end

  def show
    @listings = Listing.where(category_id: params[:id])
  end
end
