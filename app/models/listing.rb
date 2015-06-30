class Listing < ActiveRecord::Base
  belongs_to :categories
  belongs_to :subcategories

  geocoded_by :address_for_geocode
  after_validation :geocode

  def address_for_geocode
    [city, state, zipcode, country].join(', ')
  end

  def self.search(params)
    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where('title like ? or description like ?', params[:search], params[:search]) if params[:search].present?
    listings = listings.near(params[:location], 20) if params[:location].present?
    listings
  end
end
