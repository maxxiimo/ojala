# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  { name: 'Automotive Services' },
  # { name: 'Maintenance' },
  { name: 'Beauty' },
  { name: 'Business' },
  { name: 'Dating' },
  { name: 'Dining' },
  { name: 'Education and Training' },
  { name: 'Farming / Livestock' },
  { name: 'For Sale' },
  # { name: 'Digital • Mobile • Electronic' },
  # { name: 'Furniture • Appliances' },
  # { name: 'Vehicle • Cycle • Marine' },
  # { name: 'Department Store • General' },
  # { name: 'Office Equipment' },
  { name: 'Healthcare' },
  { name: 'Top Industries' },
  { name: 'Jobs' },
  { name: 'Local Services' },
  { name: 'Meet Up' },
  { name: 'New Cars' },
  { name: 'Part-time Jobs' },
  { name: 'Pets / Pet Products' },
  { name: 'Real Estate' },
  { name: 'Recreation' },
  { name: 'Resumes' },
  { name: 'Ticketing' },
  { name: 'Tourism' },
  { name: 'Used Cars' }
  # { name: 'By Brand' },
  # { name: 'Manufacturer Certified Pre-Owned' }
])

# categories_data = YAML.load_file(Rails.root.join('db/seeds/categories.yml'))

# categories_data.each do |category|
#   category = Category.find_or_create_by(name, category['name'])
#   game.save
# end
