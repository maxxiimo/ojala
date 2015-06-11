class Listing < ActiveRecord::Base
  belongs_to :categories
  belongs_to :subcategories
end
