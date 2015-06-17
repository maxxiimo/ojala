# LOAD USERS

# FIXME ccm: Needs to only add if not already created.
# user = User.find_or_create_by!([
# NoMethodError: undefined method `%' for #<Hash:0xc4ab5f8>

user = User.create!([
  { username: 'Test 1', email: 'test1@ojala.com', password: 'password', password_confirmation: 'password' },
  { username: 'Test 2', email: 'test2@ojala.com', password: 'password', password_confirmation: 'password' },
  { username: 'Test 3', email: 'test3@ojala.com', password: 'password', password_confirmation: 'password' }
])

# FIXME ccm: .skip_confirmation! and .confirm! not working, unsuccessfully tried various fixes based on:
# http://stackoverflow.com/questions/8672189/devise-skip-confirmation-not-working
# https://groups.google.com/forum/#!topic/plataformatec-devise/5cVP6Voxk6s
#
# user.skip_confirmation!
# user.confirm!

user.save!

# NOTE ccm: This configuration will result in:
# ArgumentError: When assigning attributes, you must pass a hash as an argument.
#
# user = User.new([
#   { username: 'Test 1', email: 'test1@ojala.com', password: 'password', password_confirmation: 'password' },
#   { username: 'Test 2', email: 'test2@ojala.com', password: 'password', password_confirmation: 'password' },
#   { username: 'Test 3', email: 'test3@ojala.com', password: 'password', password_confirmation: 'password' }
# ])
# user.skip_confirmation!
# user.create

# NOTE ccm: Probably would be better to use the following:
#
# categories_data = YAML.load_file(Rails.root.join('db/seeds/categories.yml'))
#
# categories_data.each do |c|
#   category = Category.find_or_create_by(name: c['name'])
#   category.save
# end

# LOAD CATEGORIES

automotive_services_category    = Category.where(name: 'Automotive Services').first_or_create(name:'Automotive Services')
beauty_category                 = Category.where(name: 'Beauty').first_or_create(name:'Beauty')
business_category               = Category.where(name: 'Business').first_or_create(name:'Business')
dating_category                 = Category.where(name: 'Dating').first_or_create(name:'Dating')
dining_category                 = Category.where(name: 'Dining').first_or_create(name:'Dining')
education_and_training_category = Category.where(name: 'Education and Training').first_or_create(name:'Education and Training')
farming_livestock_category      = Category.where(name: 'Farming / Livestock').first_or_create(name:'Farming / Livestock')
for_sale_category               = Category.where(name: 'For Sale').first_or_create(name:'For Sale')
healthcare_category             = Category.where(name: 'Healthcare').first_or_create(name:'Healthcare')
top_industries_category         = Category.where(name: 'Top Industries').first_or_create(name:'Top Industries')
jobs_category                   = Category.where(name: 'Jobs').first_or_create(name:'Jobs')
local_services_category         = Category.where(name: 'Local Services').first_or_create(name:'Local Services')
meet_up_category                = Category.where(name: 'Meet Up').first_or_create(name:'Meet Up')
new_cars_category               = Category.where(name: 'New Cars').first_or_create(name:'New Cars')
part_time_jobs_category         = Category.where(name: 'Part-time Jobs').first_or_create(name:'Part-time Jobs')
pets_pet_products_category      = Category.where(name: 'Pets / Pet Products').first_or_create(name:'Pets / Pet Products')
real_estate_category            = Category.where(name: 'Real Estate').first_or_create(name:'Real Estate')
recreation_category             = Category.where(name: 'Recreation').first_or_create(name:'Recreation')
resumes_category                = Category.where(name: 'Resumes').first_or_create(name:'Resumes')
ticketing_category              = Category.where(name: 'Ticketing').first_or_create(name:'Ticketing')
tourism_category                = Category.where(name: 'Tourism').first_or_create(name:'Tourism')
used_cars_category              = Category.where(name: 'Used Cars').first_or_create(name:'Used Cars')

# NOTE ccm: Will need to figure out if these are assigned via a toggle or a new type of category:
#
# Maintenance
# Digital • Mobile • Electronic
# Furniture • Appliances
# Vehicle • Cycle • Marine
# Department Store • General
# Office Equipment
# By Brand
# Manufacturer Certified Pre-Owned

# LOAD SUBCATEGORIES

# Automotive Services
Subcategory.where(name: 'carpool', category_id: automotive_services_category.id).first_or_create(name: 'carpool', category_id: automotive_services_category.id)
Subcategory.where(name: 'ride wanted', category_id: automotive_services_category.id).first_or_create(name: 'ride wanted', category_id: automotive_services_category.id)
Subcategory.where(name: 'i\'m going / will drive', category_id: automotive_services_category.id).first_or_create(name: 'i\'m going / will drive', category_id: automotive_services_category.id)
Subcategory.where(name: 'chauffeur', category_id: automotive_services_category.id).first_or_create(name: 'chauffeur', category_id: automotive_services_category.id)
Subcategory.where(name: 'learn to drive', category_id: automotive_services_category.id).first_or_create(name: 'learn to drive', category_id: automotive_services_category.id)
Subcategory.where(name: 'car insurance', category_id: automotive_services_category.id).first_or_create(name: 'car insurance', category_id: automotive_services_category.id)
# Maintenance
Subcategory.where(name: 'maintenance', category_id: automotive_services_category.id).first_or_create(name: 'maintenance', category_id: automotive_services_category.id)
Subcategory.where(name: 'decorative / beauty', category_id: automotive_services_category.id).first_or_create(name: 'decorative / beauty', category_id: automotive_services_category.id)
Subcategory.where(name: 'modifications', category_id: automotive_services_category.id).first_or_create(name: 'modifications', category_id: automotive_services_category.id)
Subcategory.where(name: 'protective', category_id: automotive_services_category.id).first_or_create(name: 'protective', category_id: automotive_services_category.id)
Subcategory.where(name: 'car accessories', category_id: automotive_services_category.id).first_or_create(name: 'car accessories', category_id: automotive_services_category.id)
# other »

# Beauty
Subcategory.where(name: 'spa', category_id: beauty_category.id).first_or_create(name: 'spa', category_id: beauty_category.id)
Subcategory.where(name: 'slimming', category_id: beauty_category.id).first_or_create(name: 'slimming', category_id: beauty_category.id)
Subcategory.where(name: 'hair', category_id: beauty_category.id).first_or_create(name: 'hair', category_id: beauty_category.id)
Subcategory.where(name: 'dance', category_id: beauty_category.id).first_or_create(name: 'dance', category_id: beauty_category.id)
Subcategory.where(name: 'yoga', category_id: beauty_category.id).first_or_create(name: 'yoga', category_id: beauty_category.id)
Subcategory.where(name: 'nails', category_id: beauty_category.id).first_or_create(name: 'nails', category_id: beauty_category.id)
Subcategory.where(name: 'facial', category_id: beauty_category.id).first_or_create(name: 'facial', category_id: beauty_category.id)

# Business
Subcategory.where(name: 'patent trademark', category_id: business_category.id).first_or_create(name: 'patent trademark', category_id: business_category.id)
Subcategory.where(name: 'financial accounting', category_id: business_category.id).first_or_create(name: 'financial accounting', category_id: business_category.id)
Subcategory.where(name: 'taxes', category_id: business_category.id).first_or_create(name: 'taxes', category_id: business_category.id)
Subcategory.where(name: 'legal', category_id: business_category.id).first_or_create(name: 'legal', category_id: business_category.id)
Subcategory.where(name: 'consulting', category_id: business_category.id).first_or_create(name: 'consulting', category_id: business_category.id)
Subcategory.where(name: 'freight logistics', category_id: business_category.id).first_or_create(name: 'freight logistics', category_id: business_category.id)
Subcategory.where(name: 'courier insurance', category_id: business_category.id).first_or_create(name: 'courier insurance', category_id: business_category.id)
Subcategory.where(name: 'freight trains', category_id: business_category.id).first_or_create(name: 'freight trains', category_id: business_category.id)
Subcategory.where(name: 'site construction', category_id: business_category.id).first_or_create(name: 'site construction', category_id: business_category.id)
Subcategory.where(name: 'network cabling', category_id: business_category.id).first_or_create(name: 'network cabling', category_id: business_category.id)
Subcategory.where(name: 'advertising media', category_id: business_category.id).first_or_create(name: 'advertising media', category_id: business_category.id)
Subcategory.where(name: 'design planning', category_id: business_category.id).first_or_create(name: 'design planning', category_id: business_category.id)
Subcategory.where(name: 'packaging', category_id: business_category.id).first_or_create(name: 'packaging', category_id: business_category.id)
Subcategory.where(name: 'printing', category_id: business_category.id).first_or_create(name: 'printing', category_id: business_category.id)
Subcategory.where(name: 'customized gifts', category_id: business_category.id).first_or_create(name: 'customized gifts', category_id: business_category.id)
Subcategory.where(name: 'exhibition services', category_id: business_category.id).first_or_create(name: 'exhibition services', category_id: business_category.id)
Subcategory.where(name: 'translation', category_id: business_category.id).first_or_create(name: 'translation', category_id: business_category.id)
Subcategory.where(name: 'lease', category_id: business_category.id).first_or_create(name: 'lease', category_id: business_category.id)
Subcategory.where(name: 'equipment maint', category_id: business_category.id).first_or_create(name: 'equipment maint', category_id: business_category.id)
Subcategory.where(name: 'building', category_id: business_category.id).first_or_create(name: 'building', category_id: business_category.id)
Subcategory.where(name: 'mechanical maint', category_id: business_category.id).first_or_create(name: 'mechanical maint', category_id: business_category.id)
Subcategory.where(name: 'business registration', category_id: business_category.id).first_or_create(name: 'business registration', category_id: business_category.id)

# Dating
Subcategory.where(name: 'strictly platonic', category_id: dating_category.id).first_or_create(name: 'strictly platonic', category_id: dating_category.id)
Subcategory.where(name: 'casual encounters', category_id: dating_category.id).first_or_create(name: 'casual encounters', category_id: dating_category.id)
Subcategory.where(name: 'women seek women', category_id: dating_category.id).first_or_create(name: 'women seek women', category_id: dating_category.id)
Subcategory.where(name: 'women seeking men', category_id: dating_category.id).first_or_create(name: 'women seeking men', category_id: dating_category.id)
Subcategory.where(name: 'men seeking women', category_id: dating_category.id).first_or_create(name: 'men seeking women', category_id: dating_category.id)
Subcategory.where(name: 'men seeking men', category_id: dating_category.id).first_or_create(name: 'men seeking men', category_id: dating_category.id)
Subcategory.where(name: 'misc romance', category_id: dating_category.id).first_or_create(name: 'misc romance', category_id: dating_category.id)
Subcategory.where(name: 'missed connections', category_id: dating_category.id).first_or_create(name: 'missed connections', category_id: dating_category.id)

# Dining
Subcategory.where(name: 'takeaway', category_id: dining_category.id).first_or_create(name: 'takeaway', category_id: dining_category.id)
Subcategory.where(name: 'catering', category_id: dining_category.id).first_or_create(name: 'catering', category_id: dining_category.id)
Subcategory.where(name: 'gourmet', category_id: dining_category.id).first_or_create(name: 'gourmet', category_id: dining_category.id)
Subcategory.where(name: 'cake order', category_id: dining_category.id).first_or_create(name: 'cake order', category_id: dining_category.id)

# Education and Training
Subcategory.where(name: 'tutoring agency', category_id: education_and_training_category.id).first_or_create(name: 'tutoring agency', category_id: education_and_training_category.id)
Subcategory.where(name: 'private tutor', category_id: education_and_training_category.id).first_or_create(name: 'private tutor', category_id: education_and_training_category.id)
Subcategory.where(name: 'language', category_id: education_and_training_category.id).first_or_create(name: 'language', category_id: education_and_training_category.id)
Subcategory.where(name: 'arts', category_id: education_and_training_category.id).first_or_create(name: 'arts', category_id: education_and_training_category.id)
Subcategory.where(name: 'vocational', category_id: education_and_training_category.id).first_or_create(name: 'vocational', category_id: education_and_training_category.id)
Subcategory.where(name: 'sports', category_id: education_and_training_category.id).first_or_create(name: 'sports', category_id: education_and_training_category.id)
Subcategory.where(name: 'design', category_id: education_and_training_category.id).first_or_create(name: 'design', category_id: education_and_training_category.id)
Subcategory.where(name: 'computer', category_id: education_and_training_category.id).first_or_create(name: 'computer', category_id: education_and_training_category.id)
Subcategory.where(name: 'classes', category_id: education_and_training_category.id).first_or_create(name: 'classes', category_id: education_and_training_category.id)
Subcategory.where(name: 'abroad', category_id: education_and_training_category.id).first_or_create(name: 'abroad', category_id: education_and_training_category.id)
Subcategory.where(name: 'academic institutions', category_id: education_and_training_category.id).first_or_create(name: 'academic institutions', category_id: education_and_training_category.id)

# Farming / Livestock
Subcategory.where(name: 'garden flowers', category_id: farming_livestock_category.id).first_or_create(name: 'garden flowers', category_id: farming_livestock_category.id)
Subcategory.where(name: 'crops', category_id: farming_livestock_category.id).first_or_create(name: 'crops', category_id: farming_livestock_category.id)
Subcategory.where(name: 'plant seedlings', category_id: farming_livestock_category.id).first_or_create(name: 'plant seedlings', category_id: farming_livestock_category.id)
Subcategory.where(name: 'livestock', category_id: farming_livestock_category.id).first_or_create(name: 'livestock', category_id: farming_livestock_category.id)
Subcategory.where(name: 'aquatic products', category_id: farming_livestock_category.id).first_or_create(name: 'aquatic products', category_id: farming_livestock_category.id)
Subcategory.where(name: 'feed', category_id: farming_livestock_category.id).first_or_create(name: 'feed', category_id: farming_livestock_category.id)
Subcategory.where(name: 'pesticide / fertilizer', category_id: farming_livestock_category.id).first_or_create(name: 'pesticide / fertilizer', category_id: farming_livestock_category.id)
Subcategory.where(name: 'veterinary', category_id: farming_livestock_category.id).first_or_create(name: 'veterinary', category_id: farming_livestock_category.id)
Subcategory.where(name: 'agent', category_id: farming_livestock_category.id).first_or_create(name: 'agent', category_id: farming_livestock_category.id)
Subcategory.where(name: 'farm mach / equip', category_id: farming_livestock_category.id).first_or_create(name: 'farm mach / equip', category_id: farming_livestock_category.id)
Subcategory.where(name: 'processing of agricultural products', category_id: farming_livestock_category.id).first_or_create(name: 'processing of agricultural products', category_id: farming_livestock_category.id)

# For Sale
Subcategory.where(name: 'local garage sales', category_id: for_sale_category.id).first_or_create(name: 'local garage sales', category_id: for_sale_category.id)
Subcategory.where(name: 'new ipad 6', category_id: for_sale_category.id).first_or_create(name: 'new ipad 6', category_id: for_sale_category.id)
Subcategory.where(name: 'hot product', category_id: for_sale_category.id).first_or_create(name: 'hot product', category_id: for_sale_category.id)
# Digital • Mobile • Electronic
Subcategory.where(name: 'cell phones', category_id: for_sale_category.id).first_or_create(name: 'cell phones', category_id: for_sale_category.id)
Subcategory.where(name: 'samsung', category_id: for_sale_category.id).first_or_create(name: 'samsung', category_id: for_sale_category.id)
Subcategory.where(name: 'apple', category_id: for_sale_category.id).first_or_create(name: 'apple', category_id: for_sale_category.id)
Subcategory.where(name: 'desktop pc', category_id: for_sale_category.id).first_or_create(name: 'desktop pc', category_id: for_sale_category.id)
Subcategory.where(name: 'hardware', category_id: for_sale_category.id).first_or_create(name: 'hardware', category_id: for_sale_category.id)
Subcategory.where(name: 'monitor', category_id: for_sale_category.id).first_or_create(name: 'monitor', category_id: for_sale_category.id)
Subcategory.where(name: 'pc peripherals', category_id: for_sale_category.id).first_or_create(name: 'pc peripherals', category_id: for_sale_category.id)
Subcategory.where(name: 'laptop', category_id: for_sale_category.id).first_or_create(name: 'laptop', category_id: for_sale_category.id)
Subcategory.where(name: 'macbook', category_id: for_sale_category.id).first_or_create(name: 'macbook', category_id: for_sale_category.id)
Subcategory.where(name: 'lenovo', category_id: for_sale_category.id).first_or_create(name: 'lenovo', category_id: for_sale_category.id)
Subcategory.where(name: 'tablet', category_id: for_sale_category.id).first_or_create(name: 'tablet', category_id: for_sale_category.id)
Subcategory.where(name: 'ipad', category_id: for_sale_category.id).first_or_create(name: 'ipad', category_id: for_sale_category.id)
Subcategory.where(name: 'digital products', category_id: for_sale_category.id).first_or_create(name: 'digital products', category_id: for_sale_category.id)
Subcategory.where(name: 'camera', category_id: for_sale_category.id).first_or_create(name: 'camera', category_id: for_sale_category.id)
Subcategory.where(name: 'dslr', category_id: for_sale_category.id).first_or_create(name: 'dslr', category_id: for_sale_category.id)
Subcategory.where(name: 'game consoles', category_id: for_sale_category.id).first_or_create(name: 'game consoles', category_id: for_sale_category.id)
# Furniture • Appliances
Subcategory.where(name: 'appliances', category_id: for_sale_category.id).first_or_create(name: 'appliances', category_id: for_sale_category.id)
Subcategory.where(name: 'refrigerator', category_id: for_sale_category.id).first_or_create(name: 'refrigerator', category_id: for_sale_category.id)
Subcategory.where(name: 'ac', category_id: for_sale_category.id).first_or_create(name: 'ac', category_id: for_sale_category.id)
Subcategory.where(name: 'washing mach', category_id: for_sale_category.id).first_or_create(name: 'washing mach', category_id: for_sale_category.id)
Subcategory.where(name: 'furniture', category_id: for_sale_category.id).first_or_create(name: 'furniture', category_id: for_sale_category.id)
Subcategory.where(name: 'sofa', category_id: for_sale_category.id).first_or_create(name: 'sofa', category_id: for_sale_category.id)
Subcategory.where(name: 'bed', category_id: for_sale_category.id).first_or_create(name: 'bed', category_id: for_sale_category.id)
Subcategory.where(name: 'tables', category_id: for_sale_category.id).first_or_create(name: 'tables', category_id: for_sale_category.id)
# Vehicle • Cycle • Marine
Subcategory.where(name: 'motorcycles', category_id: for_sale_category.id).first_or_create(name: 'motorcycles', category_id: for_sale_category.id)
Subcategory.where(name: 'yamaha', category_id: for_sale_category.id).first_or_create(name: 'yamaha', category_id: for_sale_category.id)
Subcategory.where(name: 'honda', category_id: for_sale_category.id).first_or_create(name: 'honda', category_id: for_sale_category.id)
Subcategory.where(name: 'bicycles', category_id: for_sale_category.id).first_or_create(name: 'bicycles', category_id: for_sale_category.id)
Subcategory.where(name: 'electric', category_id: for_sale_category.id).first_or_create(name: 'electric', category_id: for_sale_category.id)
Subcategory.where(name: 'atv / utv / snow', category_id: for_sale_category.id).first_or_create(name: 'atv / utv / snow', category_id: for_sale_category.id)
Subcategory.where(name: 'boats', category_id: for_sale_category.id).first_or_create(name: 'boats', category_id: for_sale_category.id)
Subcategory.where(name: 'rv / camper', category_id: for_sale_category.id).first_or_create(name: 'rv / camper', category_id: for_sale_category.id)
# Department Store • General
Subcategory.where(name: 'clothing', category_id: for_sale_category.id).first_or_create(name: 'clothing', category_id: for_sale_category.id)
Subcategory.where(name: 'kitchen', category_id: for_sale_category.id).first_or_create(name: 'kitchen', category_id: for_sale_category.id)
Subcategory.where(name: 'fabric', category_id: for_sale_category.id).first_or_create(name: 'fabric', category_id: for_sale_category.id)
Subcategory.where(name: 'bedding', category_id: for_sale_category.id).first_or_create(name: 'bedding', category_id: for_sale_category.id)
Subcategory.where(name: 'baby toys', category_id: for_sale_category.id).first_or_create(name: 'baby toys', category_id: for_sale_category.id)
Subcategory.where(name: 'children\'s toys', category_id: for_sale_category.id).first_or_create(name: 'children\'s toys', category_id: for_sale_category.id)
Subcategory.where(name: 'clothing bags', category_id: for_sale_category.id).first_or_create(name: 'clothing bags', category_id: for_sale_category.id)
Subcategory.where(name: 'watches', category_id: for_sale_category.id).first_or_create(name: 'watches', category_id: for_sale_category.id)
Subcategory.where(name: 'shoes', category_id: for_sale_category.id).first_or_create(name: 'shoes', category_id: for_sale_category.id)
Subcategory.where(name: 'adult', category_id: for_sale_category.id).first_or_create(name: 'adult', category_id: for_sale_category.id)
Subcategory.where(name: 'beauty care', category_id: for_sale_category.id).first_or_create(name: 'beauty care', category_id: for_sale_category.id)
Subcategory.where(name: 'fitness', category_id: for_sale_category.id).first_or_create(name: 'fitness', category_id: for_sale_category.id)
Subcategory.where(name: 'tools', category_id: for_sale_category.id).first_or_create(name: 'tools', category_id: for_sale_category.id)
Subcategory.where(name: 'arts and crafts', category_id: for_sale_category.id).first_or_create(name: 'arts and crafts', category_id: for_sale_category.id)
Subcategory.where(name: 'musical instr', category_id: for_sale_category.id).first_or_create(name: 'musical instr', category_id: for_sale_category.id)
Subcategory.where(name: 'books', category_id: for_sale_category.id).first_or_create(name: 'books', category_id: for_sale_category.id)
Subcategory.where(name: 'collectibles', category_id: for_sale_category.id).first_or_create(name: 'collectibles', category_id: for_sale_category.id)
Subcategory.where(name: 'general', category_id: for_sale_category.id).first_or_create(name: 'general', category_id: for_sale_category.id)
Subcategory.where(name: 'Is that', category_id: for_sale_category.id).first_or_create(name: 'wanted', category_id: for_sale_category.id)
Subcategory.where(name: 'FREE', category_id: for_sale_category.id).first_or_create(name: 'FREE', category_id: for_sale_category.id)
Subcategory.where(name: 'jewelry', category_id: for_sale_category.id).first_or_create(name: 'jewelry', category_id: for_sale_category.id)
Subcategory.where(name: 'materials', category_id: for_sale_category.id).first_or_create(name: 'materials', category_id: for_sale_category.id)
Subcategory.where(name: 'gift cards', category_id: for_sale_category.id).first_or_create(name: 'gift cards', category_id: for_sale_category.id)
Subcategory.where(name: 'game trading', category_id: for_sale_category.id).first_or_create(name: 'game trading', category_id: for_sale_category.id)
# Office Equipment
Subcategory.where(name: 'cds / dvd / vhs', category_id: for_sale_category.id).first_or_create(name: 'cds / dvd / vhs', category_id: for_sale_category.id)
Subcategory.where(name: 'equipment', category_id: for_sale_category.id).first_or_create(name: 'equipment', category_id: for_sale_category.id)
Subcategory.where(name: 'desk', category_id: for_sale_category.id).first_or_create(name: 'desk', category_id: for_sale_category.id)
Subcategory.where(name: 'printer', category_id: for_sale_category.id).first_or_create(name: 'printer', category_id: for_sale_category.id)
Subcategory.where(name: 'used equip', category_id: for_sale_category.id).first_or_create(name: 'used equip', category_id: for_sale_category.id)
Subcategory.where(name: 'construct mach', category_id: for_sale_category.id).first_or_create(name: 'construct mach', category_id: for_sale_category.id)


# Healthcare
Subcategory.where(name: 'dermatology', category_id: healthcare_category.id).first_or_create(name: 'dermatology', category_id: healthcare_category.id)
Subcategory.where(name: 'gynecology', category_id: healthcare_category.id).first_or_create(name: 'gynecology', category_id: healthcare_category.id)
Subcategory.where(name: 'genital warts', category_id: healthcare_category.id).first_or_create(name: 'genital warts', category_id: healthcare_category.id)
Subcategory.where(name: 'genital herpes', category_id: healthcare_category.id).first_or_create(name: 'genital herpes', category_id: healthcare_category.id)
Subcategory.where(name: 'cosmetic', category_id: healthcare_category.id).first_or_create(name: 'cosmetic', category_id: healthcare_category.id)
Subcategory.where(name: 'impotence', category_id: healthcare_category.id).first_or_create(name: 'impotence', category_id: healthcare_category.id)
Subcategory.where(name: 'infertility', category_id: healthcare_category.id).first_or_create(name: 'infertility', category_id: healthcare_category.id)
Subcategory.where(name: 'massage', category_id: healthcare_category.id).first_or_create(name: 'massage', category_id: healthcare_category.id)
Subcategory.where(name: 'premature ejac', category_id: healthcare_category.id).first_or_create(name: 'premature ejac', category_id: healthcare_category.id)

# Top Industries
Subcategory.where(name: 'medical / care', category_id: top_industries_category.id).first_or_create(name: 'medical / care', category_id: top_industries_category.id)
Subcategory.where(name: 'massage', category_id: top_industries_category.id).first_or_create(name: 'massage', category_id: top_industries_category.id)
Subcategory.where(name: 'computer / network', category_id: top_industries_category.id).first_or_create(name: 'computer / network', category_id: top_industries_category.id)
Subcategory.where(name: 'market / media', category_id: top_industries_category.id).first_or_create(name: 'market / media', category_id: top_industries_category.id)
Subcategory.where(name: 'catering', category_id: top_industries_category.id).first_or_create(name: 'catering', category_id: top_industries_category.id)
Subcategory.where(name: 'pharma / biotech', category_id: top_industries_category.id).first_or_create(name: 'pharma / biotech', category_id: top_industries_category.id)
Subcategory.where(name: 'electrical', category_id: top_industries_category.id).first_or_create(name: 'electrical', category_id: top_industries_category.id)
Subcategory.where(name: 'electronic', category_id: top_industries_category.id).first_or_create(name: 'electronic', category_id: top_industries_category.id)
Subcategory.where(name: 'advert / exhibit', category_id: top_industries_category.id).first_or_create(name: 'advert / exhibit', category_id: top_industries_category.id)
Subcategory.where(name: 'depart store', category_id: top_industries_category.id).first_or_create(name: 'depart store', category_id: top_industries_category.id)
Subcategory.where(name: 'supermarket', category_id: top_industries_category.id).first_or_create(name: 'supermarket', category_id: top_industries_category.id)
Subcategory.where(name: 'hospitality / tourism', category_id: top_industries_category.id).first_or_create(name: 'hospitality / tourism', category_id: top_industries_category.id)
Subcategory.where(name: 'warehouse', category_id: top_industries_category.id).first_or_create(name: 'warehouse', category_id: top_industries_category.id)
Subcategory.where(name: 'logistics', category_id: top_industries_category.id).first_or_create(name: 'logistics', category_id: top_industries_category.id)
Subcategory.where(name: 'finance / banking', category_id: top_industries_category.id).first_or_create(name: 'finance / banking', category_id: top_industries_category.id)
Subcategory.where(name: 'sports / fitness', category_id: top_industries_category.id).first_or_create(name: 'sports / fitness', category_id: top_industries_category.id)
Subcategory.where(name: 'building', category_id: top_industries_category.id).first_or_create(name: 'building', category_id: top_industries_category.id)
Subcategory.where(name: 'equip / machinery', category_id: top_industries_category.id).first_or_create(name: 'equip / machinery', category_id: top_industries_category.id)
Subcategory.where(name: 'beauty / hair', category_id: top_industries_category.id).first_or_create(name: 'beauty / hair', category_id: top_industries_category.id)
Subcategory.where(name: 'art / design', category_id: top_industries_category.id).first_or_create(name: 'art / design', category_id: top_industries_category.id)
Subcategory.where(name: 'entertain / leisure', category_id: top_industries_category.id).first_or_create(name: 'entertain / leisure', category_id: top_industries_category.id)
Subcategory.where(name: 'edu / training', category_id: top_industries_category.id).first_or_create(name: 'edu / training', category_id: top_industries_category.id)
Subcategory.where(name: 'textile / food', category_id: top_industries_category.id).first_or_create(name: 'textile / food', category_id: top_industries_category.id)
Subcategory.where(name: 'automotive services', category_id: top_industries_category.id).first_or_create(name: 'automotive services', category_id: top_industries_category.id)

# Jobs
# create online resume
Subcategory.where(name: 'sales', category_id: jobs_category.id).first_or_create(name: 'sales', category_id: jobs_category.id)
Subcategory.where(name: 'service', category_id: jobs_category.id).first_or_create(name: 'service', category_id: jobs_category.id)
Subcategory.where(name: 'salesperson', category_id: jobs_category.id).first_or_create(name: 'salesperson', category_id: jobs_category.id)
Subcategory.where(name: 'clerical', category_id: jobs_category.id).first_or_create(name: 'clerical', category_id: jobs_category.id)
Subcategory.where(name: 'assistant', category_id: jobs_category.id).first_or_create(name: 'assistant', category_id: jobs_category.id)
Subcategory.where(name: 'general labor', category_id: jobs_category.id).first_or_create(name: 'general labor', category_id: jobs_category.id)
Subcategory.where(name: 'front desk', category_id: jobs_category.id).first_or_create(name: 'front desk', category_id: jobs_category.id)
Subcategory.where(name: 'editor', category_id: jobs_category.id).first_or_create(name: 'editor', category_id: jobs_category.id)
Subcategory.where(name: 'electrician', category_id: jobs_category.id).first_or_create(name: 'electrician', category_id: jobs_category.id)
Subcategory.where(name: 'cashier', category_id: jobs_category.id).first_or_create(name: 'cashier', category_id: jobs_category.id)
Subcategory.where(name: 'accounting', category_id: jobs_category.id).first_or_create(name: 'accounting', category_id: jobs_category.id)
Subcategory.where(name: 'makeup', category_id: jobs_category.id).first_or_create(name: 'makeup', category_id: jobs_category.id)
Subcategory.where(name: 'finance', category_id: jobs_category.id).first_or_create(name: 'finance', category_id: jobs_category.id)
Subcategory.where(name: 'webmaster', category_id: jobs_category.id).first_or_create(name: 'webmaster', category_id: jobs_category.id)
Subcategory.where(name: 'welder', category_id: jobs_category.id).first_or_create(name: 'welder', category_id: jobs_category.id)
Subcategory.where(name: 'preschool', category_id: jobs_category.id).first_or_create(name: 'preschool', category_id: jobs_category.id)
Subcategory.where(name: 'mechanic', category_id: jobs_category.id).first_or_create(name: 'mechanic', category_id: jobs_category.id)
Subcategory.where(name: 'architecture', category_id: jobs_category.id).first_or_create(name: 'architecture', category_id: jobs_category.id)
Subcategory.where(name: 'claims', category_id: jobs_category.id).first_or_create(name: 'claims', category_id: jobs_category.id)
Subcategory.where(name: 'engineer', category_id: jobs_category.id).first_or_create(name: 'engineer', category_id: jobs_category.id)
Subcategory.where(name: 'manager', category_id: jobs_category.id).first_or_create(name: 'manager', category_id: jobs_category.id)
Subcategory.where(name: 'teacher', category_id: jobs_category.id).first_or_create(name: 'teacher', category_id: jobs_category.id)
Subcategory.where(name: 'nurse', category_id: jobs_category.id).first_or_create(name: 'nurse', category_id: jobs_category.id)
Subcategory.where(name: 'waiter', category_id: jobs_category.id).first_or_create(name: 'waiter', category_id: jobs_category.id)
Subcategory.where(name: 'doctors', category_id: jobs_category.id).first_or_create(name: 'doctors', category_id: jobs_category.id)
Subcategory.where(name: 'cleaning', category_id: jobs_category.id).first_or_create(name: 'cleaning', category_id: jobs_category.id)
Subcategory.where(name: 'security', category_id: jobs_category.id).first_or_create(name: 'security', category_id: jobs_category.id)
Subcategory.where(name: 'chef', category_id: jobs_category.id).first_or_create(name: 'chef', category_id: jobs_category.id)
Subcategory.where(name: 'translation', category_id: jobs_category.id).first_or_create(name: 'translation', category_id: jobs_category.id)
Subcategory.where(name: 'legal', category_id: jobs_category.id).first_or_create(name: 'legal', category_id: jobs_category.id)
Subcategory.where(name: 'nanny', category_id: jobs_category.id).first_or_create(name: 'nanny', category_id: jobs_category.id)
Subcategory.where(name: 'courier', category_id: jobs_category.id).first_or_create(name: 'courier', category_id: jobs_category.id)
Subcategory.where(name: 'apprentice', category_id: jobs_category.id).first_or_create(name: 'apprentice', category_id: jobs_category.id)
Subcategory.where(name: 'guide', category_id: jobs_category.id).first_or_create(name: 'guide', category_id: jobs_category.id)
Subcategory.where(name: 'housekeeper', category_id: jobs_category.id).first_or_create(name: 'housekeeper', category_id: jobs_category.id)
Subcategory.where(name: 'porter', category_id: jobs_category.id).first_or_create(name: 'porter', category_id: jobs_category.id)
Subcategory.where(name: 'handyman', category_id: jobs_category.id).first_or_create(name: 'handyman', category_id: jobs_category.id)
Subcategory.where(name: 'visa consult', category_id: jobs_category.id).first_or_create(name: 'visa consult', category_id: jobs_category.id)
Subcategory.where(name: 'real estate', category_id: jobs_category.id).first_or_create(name: 'real estate', category_id: jobs_category.id)
Subcategory.where(name: 'part-time', category_id: jobs_category.id).first_or_create(name: 'part-time', category_id: jobs_category.id)
Subcategory.where(name: 'dishwasher', category_id: jobs_category.id).first_or_create(name: 'dishwasher', category_id: jobs_category.id)
Subcategory.where(name: 'insurance', category_id: jobs_category.id).first_or_create(name: 'insurance', category_id: jobs_category.id)
Subcategory.where(name: 'car wash', category_id: jobs_category.id).first_or_create(name: 'car wash', category_id: jobs_category.id)
Subcategory.where(name: 'bakers', category_id: jobs_category.id).first_or_create(name: 'bakers', category_id: jobs_category.id)
Subcategory.where(name: 'admin / ofc', category_id: jobs_category.id).first_or_create(name: 'admin / ofc', category_id: jobs_category.id)
Subcategory.where(name: 'logistics', category_id: jobs_category.id).first_or_create(name: 'logistics', category_id: jobs_category.id)
Subcategory.where(name: 'photogr', category_id: jobs_category.id).first_or_create(name: 'photogr', category_id: jobs_category.id)
Subcategory.where(name: 'delivery', category_id: jobs_category.id).first_or_create(name: 'delivery', category_id: jobs_category.id)
Subcategory.where(name: 'graphic des', category_id: jobs_category.id).first_or_create(name: 'graphic des', category_id: jobs_category.id)
Subcategory.where(name: 'hairstylist', category_id: jobs_category.id).first_or_create(name: 'hairstylist', category_id: jobs_category.id)
Subcategory.where(name: 'auto repair', category_id: jobs_category.id).first_or_create(name: 'auto repair', category_id: jobs_category.id)
Subcategory.where(name: 'web design', category_id: jobs_category.id).first_or_create(name: 'web design', category_id: jobs_category.id)
Subcategory.where(name: 'beautician', category_id: jobs_category.id).first_or_create(name: 'beautician', category_id: jobs_category.id)
Subcategory.where(name: 'automotive', category_id: jobs_category.id).first_or_create(name: 'automotive', category_id: jobs_category.id)
Subcategory.where(name: 'interior des', category_id: jobs_category.id).first_or_create(name: 'interior des', category_id: jobs_category.id)
Subcategory.where(name: 'operator', category_id: jobs_category.id).first_or_create(name: 'operator', category_id: jobs_category.id)
Subcategory.where(name: 'driver', category_id: jobs_category.id).first_or_create(name: 'driver', category_id: jobs_category.id)
Subcategory.where(name: 'tallymen', category_id: jobs_category.id).first_or_create(name: 'tallymen', category_id: jobs_category.id)
Subcategory.where(name: 'property', category_id: jobs_category.id).first_or_create(name: 'property', category_id: jobs_category.id)
# more »

# Local Services
# Subcategory.where(name: '', category_id: local_services_category.id).first_or_create(name: '', category_id: local_services_category.id)

# Meet Up
# start a group
Subcategory.where(name: 'volunteering', category_id: meet_up_category.id).first_or_create(name: 'volunteering', category_id: meet_up_category.id)
Subcategory.where(name: 'writing', category_id: meet_up_category.id).first_or_create(name: 'writing', category_id: meet_up_category.id)
Subcategory.where(name: 'consciousness', category_id: meet_up_category.id).first_or_create(name: 'consciousness', category_id: meet_up_category.id)
Subcategory.where(name: 'live music', category_id: meet_up_category.id).first_or_create(name: 'live music', category_id: meet_up_category.id)
Subcategory.where(name: 'fitness', category_id: meet_up_category.id).first_or_create(name: 'fitness', category_id: meet_up_category.id)
Subcategory.where(name: 'language / culture', category_id: meet_up_category.id).first_or_create(name: 'language / culture', category_id: meet_up_category.id)
Subcategory.where(name: 'women\'s social', category_id: meet_up_category.id).first_or_create(name: 'women\'s social', category_id: meet_up_category.id)
Subcategory.where(name: 'education', category_id: meet_up_category.id).first_or_create(name: 'education', category_id: meet_up_category.id)
Subcategory.where(name: 'technology', category_id: meet_up_category.id).first_or_create(name: 'technology', category_id: meet_up_category.id)
Subcategory.where(name: 'dining out', category_id: meet_up_category.id).first_or_create(name: 'dining out', category_id: meet_up_category.id)
Subcategory.where(name: 'lgbt', category_id: meet_up_category.id).first_or_create(name: 'lgbt', category_id: meet_up_category.id)
Subcategory.where(name: 'crafts', category_id: meet_up_category.id).first_or_create(name: 'crafts', category_id: meet_up_category.id)
Subcategory.where(name: 'social', category_id: meet_up_category.id).first_or_create(name: 'social', category_id: meet_up_category.id)
Subcategory.where(name: 'moms', category_id: meet_up_category.id).first_or_create(name: 'moms', category_id: meet_up_category.id)
Subcategory.where(name: 'entrepreneurship', category_id: meet_up_category.id).first_or_create(name: 'entrepreneurship', category_id: meet_up_category.id)

# New Cars
# new ford fusion, class: 'red'
Subcategory.where(name: 'hot prices', category_id: new_cars_category.id).first_or_create(name: 'hot prices', category_id: new_cars_category.id)
Subcategory.where(name: 'porsche', category_id: new_cars_category.id).first_or_create(name: 'porsche', category_id: new_cars_category.id)
Subcategory.where(name: 'highlander', category_id: new_cars_category.id).first_or_create(name: 'highlander', category_id: new_cars_category.id)
Subcategory.where(name: 'volvo', category_id: new_cars_category.id).first_or_create(name: 'volvo', category_id: new_cars_category.id)
Subcategory.where(name: 'land rover', category_id: new_cars_category.id).first_or_create(name: 'land rover', category_id: new_cars_category.id)
Subcategory.where(name: 'honda', category_id: new_cars_category.id).first_or_create(name: 'honda', category_id: new_cars_category.id)
Subcategory.where(name: 'volkswagen', category_id: new_cars_category.id).first_or_create(name: 'volkswagen', category_id: new_cars_category.id)
Subcategory.where(name: 'tesla', category_id: new_cars_category.id).first_or_create(name: 'tesla', category_id: new_cars_category.id)

# Part-time Jobs
Subcategory.where(name: 'students', category_id: part_time_jobs_category.id).first_or_create(name: 'students', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'staff', category_id: part_time_jobs_category.id).first_or_create(name: 'staff', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'leaflet dist', category_id: part_time_jobs_category.id).first_or_create(name: 'leaflet dist', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'tutoring', category_id: part_time_jobs_category.id).first_or_create(name: 'tutoring', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'translations', category_id: part_time_jobs_category.id).first_or_create(name: 'translations', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'graphic des', category_id: part_time_jobs_category.id).first_or_create(name: 'graphic des', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'promotional', category_id: part_time_jobs_category.id).first_or_create(name: 'promotional', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'accounting', category_id: part_time_jobs_category.id).first_or_create(name: 'accounting', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'web design', category_id: part_time_jobs_category.id).first_or_create(name: 'web design', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'survey', category_id: part_time_jobs_category.id).first_or_create(name: 'survey', category_id: part_time_jobs_category.id)
Subcategory.where(name: 'driver', category_id: part_time_jobs_category.id).first_or_create(name: 'driver', category_id: part_time_jobs_category.id)
# more »

# Pets / Pet Products
Subcategory.where(name: 'dogs', category_id: pets_pet_products_category.id).first_or_create(name: 'dogs', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'cats', category_id: pets_pet_products_category.id).first_or_create(name: 'cats', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'huskies', category_id: pets_pet_products_category.id).first_or_create(name: 'huskies', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'retrievers', category_id: pets_pet_products_category.id).first_or_create(name: 'retrievers', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'birds', category_id: pets_pet_products_category.id).first_or_create(name: 'birds', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'fish', category_id: pets_pet_products_category.id).first_or_create(name: 'fish', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'turtle', category_id: pets_pet_products_category.id).first_or_create(name: 'turtle', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'aquariums', category_id: pets_pet_products_category.id).first_or_create(name: 'aquariums', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'pet supplies', category_id: pets_pet_products_category.id).first_or_create(name: 'pet supplies', category_id: pets_pet_products_category.id)
Subcategory.where(name: 'pet services', category_id: pets_pet_products_category.id).first_or_create(name: 'pet services', category_id: pets_pet_products_category.id)

# Real Estate
Subcategory.where(name: 'housing for rent', category_id: real_estate_category.id).first_or_create(name: 'housing for rent', category_id: real_estate_category.id)
Subcategory.where(name: 'housing wanted', category_id: real_estate_category.id).first_or_create(name: 'housing wanted', category_id: real_estate_category.id)
Subcategory.where(name: 'entire rent', category_id: real_estate_category.id).first_or_create(name: 'entire rent', category_id: real_estate_category.id)
Subcategory.where(name: 'roommate wanted', category_id: real_estate_category.id).first_or_create(name: 'roommate wanted', category_id: real_estate_category.id)
Subcategory.where(name: 'rooms / shared', category_id: real_estate_category.id).first_or_create(name: 'rooms / shared', category_id: real_estate_category.id)
Subcategory.where(name: 'rooms wanted', category_id: real_estate_category.id).first_or_create(name: 'rooms wanted', category_id: real_estate_category.id)
Subcategory.where(name: 'sublets / temporary', category_id: real_estate_category.id).first_or_create(name: 'sublets / temporary', category_id: real_estate_category.id)
Subcategory.where(name: 'b&b reservations', category_id: real_estate_category.id).first_or_create(name: 'b&b reservations', category_id: real_estate_category.id)
Subcategory.where(name: 'vacation rentals', category_id: real_estate_category.id).first_or_create(name: 'vacation rentals', category_id: real_estate_category.id)
Subcategory.where(name: 'housing swap', category_id: real_estate_category.id).first_or_create(name: 'housing swap', category_id: real_estate_category.id)
Subcategory.where(name: 'new homes', category_id: real_estate_category.id).first_or_create(name: 'new homes', category_id: real_estate_category.id)
Subcategory.where(name: 'owner occupied', category_id: real_estate_category.id).first_or_create(name: 'owner occupied', category_id: real_estate_category.id)
Subcategory.where(name: 'rental shops', category_id: real_estate_category.id).first_or_create(name: 'rental shops', category_id: real_estate_category.id)
Subcategory.where(name: 'shops for sale', category_id: real_estate_category.id).first_or_create(name: 'shops for sale', category_id: real_estate_category.id)
Subcategory.where(name: 'office / commercial', category_id: real_estate_category.id).first_or_create(name: 'office / commercial', category_id: real_estate_category.id)
Subcategory.where(name: 'warehouse / land', category_id: real_estate_category.id).first_or_create(name: 'warehouse / land', category_id: real_estate_category.id)
Subcategory.where(name: 'storage / parking', category_id: real_estate_category.id).first_or_create(name: 'storage / parking', category_id: real_estate_category.id)

# Recreation
Subcategory.where(name: 'sports and fitness', category_id: recreation_category.id).first_or_create(name: 'sports and fitness', category_id: recreation_category.id)
Subcategory.where(name: 'nightclub / bar', category_id: recreation_category.id).first_or_create(name: 'nightclub / bar', category_id: recreation_category.id)
Subcategory.where(name: 'foot / massage', category_id: recreation_category.id).first_or_create(name: 'foot / massage', category_id: recreation_category.id)
Subcategory.where(name: 'bath / spa', category_id: recreation_category.id).first_or_create(name: 'bath / spa', category_id: recreation_category.id)

# Resumes
# resume search
Subcategory.where(name: 'sales clerk', category_id: resumes_category.id).first_or_create(name: 'sales clerk', category_id: resumes_category.id)
Subcategory.where(name: 'graphic design', category_id: resumes_category.id).first_or_create(name: 'graphic design', category_id: resumes_category.id)
Subcategory.where(name: 'receptionist', category_id: resumes_category.id).first_or_create(name: 'receptionist', category_id: resumes_category.id)
Subcategory.where(name: 'accountant', category_id: resumes_category.id).first_or_create(name: 'accountant', category_id: resumes_category.id)
Subcategory.where(name: 'warehouse mgt', category_id: resumes_category.id).first_or_create(name: 'warehouse mgt', category_id: resumes_category.id)
Subcategory.where(name: 'assistant', category_id: resumes_category.id).first_or_create(name: 'assistant', category_id: resumes_category.id)
Subcategory.where(name: 'real estate broker', category_id: resumes_category.id).first_or_create(name: 'real estate broker', category_id: resumes_category.id)
Subcategory.where(name: 'chef', category_id: resumes_category.id).first_or_create(name: 'chef', category_id: resumes_category.id)
Subcategory.where(name: 'bank teller', category_id: resumes_category.id).first_or_create(name: 'bank teller', category_id: resumes_category.id)

# Ticketing
Subcategory.where(name: 'tickets', category_id: ticketing_category.id).first_or_create(name: 'tickets', category_id: ticketing_category.id)
Subcategory.where(name: 'movie tickets', category_id: ticketing_category.id).first_or_create(name: 'movie tickets', category_id: ticketing_category.id)
Subcategory.where(name: 'sports', category_id: ticketing_category.id).first_or_create(name: 'sports', category_id: ticketing_category.id)
Subcategory.where(name: 'attractions', category_id: ticketing_category.id).first_or_create(name: 'attractions', category_id: ticketing_category.id)
Subcategory.where(name: 'amuse parks', category_id: ticketing_category.id).first_or_create(name: 'amuse parks', category_id: ticketing_category.id)
Subcategory.where(name: 'concerts', category_id: ticketing_category.id).first_or_create(name: 'concerts', category_id: ticketing_category.id)
Subcategory.where(name: 'cheap flights', category_id: ticketing_category.id).first_or_create(name: 'cheap flights', category_id: ticketing_category.id)
Subcategory.where(name: 'lottery', category_id: ticketing_category.id).first_or_create(name: 'lottery', category_id: ticketing_category.id)
Subcategory.where(name: 'memberships', category_id: ticketing_category.id).first_or_create(name: 'memberships', category_id: ticketing_category.id)
Subcategory.where(name: 'other tickets', category_id: ticketing_category.id).first_or_create(name: 'other tickets', category_id: ticketing_category.id)

# Tourism
Subcategory.where(name: 'tours', category_id: tourism_category.id).first_or_create(name: 'tours', category_id: tourism_category.id)
Subcategory.where(name: 'deals', category_id: tourism_category.id).first_or_create(name: 'deals', category_id: tourism_category.id)
Subcategory.where(name: 'spa', category_id: tourism_category.id).first_or_create(name: 'spa', category_id: tourism_category.id)
Subcategory.where(name: 'local travel', category_id: tourism_category.id).first_or_create(name: 'local travel', category_id: tourism_category.id)
Subcategory.where(name: 'booking', category_id: tourism_category.id).first_or_create(name: 'booking', category_id: tourism_category.id)
Subcategory.where(name: 'sites', category_id: tourism_category.id).first_or_create(name: 'sites', category_id: tourism_category.id)
Subcategory.where(name: 'accommodations', category_id: tourism_category.id).first_or_create(name: 'accommodations', category_id: tourism_category.id)

# Used Cars
Subcategory.where(name: 'nationwide', category_id: used_cars_category.id).first_or_create(name: 'nationwide', category_id: used_cars_category.id)
Subcategory.where(name: 'local dealers', category_id: used_cars_category.id).first_or_create(name: 'local dealers', category_id: used_cars_category.id)
Subcategory.where(name: '$3000 or less', category_id: used_cars_category.id).first_or_create(name: '$3000 or less', category_id: used_cars_category.id)
Subcategory.where(name: '$3000 - 6000', category_id: used_cars_category.id).first_or_create(name: '$3000 - 6000', category_id: used_cars_category.id)
Subcategory.where(name: '$6000 - 12000', category_id: used_cars_category.id).first_or_create(name: '$6000 - 12000', category_id: used_cars_category.id)
Subcategory.where(name: '$12000 - 24000', category_id: used_cars_category.id).first_or_create(name: '$12000 - 24000', category_id: used_cars_category.id)
Subcategory.where(name: 'luxury', category_id: used_cars_category.id).first_or_create(name: 'luxury', category_id: used_cars_category.id)
Subcategory.where(name: 'suv', category_id: used_cars_category.id).first_or_create(name: 'suv', category_id: used_cars_category.id)
Subcategory.where(name: 'truck', category_id: used_cars_category.id).first_or_create(name: 'truck', category_id: used_cars_category.id)
# more »
# By Brand
Subcategory.where(name: 'volkswagen', category_id: used_cars_category.id).first_or_create(name: 'volkswagen', category_id: used_cars_category.id)
Subcategory.where(name: 'honda', category_id: used_cars_category.id).first_or_create(name: 'honda', category_id: used_cars_category.id)
Subcategory.where(name: 'toyota', category_id: used_cars_category.id).first_or_create(name: 'toyota', category_id: used_cars_category.id)
Subcategory.where(name: 'audi', category_id: used_cars_category.id).first_or_create(name: 'audi', category_id: used_cars_category.id)
Subcategory.where(name: 'bmw', category_id: used_cars_category.id).first_or_create(name: 'bmw', category_id: used_cars_category.id)
Subcategory.where(name: 'buick', category_id: used_cars_category.id).first_or_create(name: 'buick', category_id: used_cars_category.id)
Subcategory.where(name: 'chevrolet', category_id: used_cars_category.id).first_or_create(name: 'chevrolet', category_id: used_cars_category.id)
Subcategory.where(name: 'nissan', category_id: used_cars_category.id).first_or_create(name: 'nissan', category_id: used_cars_category.id)
Subcategory.where(name: 'mercedes-benz', category_id: used_cars_category.id).first_or_create(name: 'mercedes-benz', category_id: used_cars_category.id)
Subcategory.where(name: 'ford', category_id: used_cars_category.id).first_or_create(name: 'ford', category_id: used_cars_category.id)
Subcategory.where(name: 'mazda', category_id: used_cars_category.id).first_or_create(name: 'mazda', category_id: used_cars_category.id)
Subcategory.where(name: 'suzuki', category_id: used_cars_category.id).first_or_create(name: 'suzuki', category_id: used_cars_category.id)
Subcategory.where(name: 'citroen', category_id: used_cars_category.id).first_or_create(name: 'citroen', category_id: used_cars_category.id)
Subcategory.where(name: 'kia', category_id: used_cars_category.id).first_or_create(name: 'kia', category_id: used_cars_category.id)
# Manufacturer Certified Pre-Owned
