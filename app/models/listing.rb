class Listing < ActiveRecord::Base
  belongs_to :categories
  belongs_to :subcategories

  geocoded_by :address_for_geocode
  after_validation :geocode

  def address_for_geocode
    [city, state, zipcode, country].join(', ')
  end
end
