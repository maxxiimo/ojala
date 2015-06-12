# Load users

# NOTE ccm: .skip_confirmation! not working, unsuccessfully tried various fixes based on:
# http://stackoverflow.com/questions/8672189/devise-skip-confirmation-not-working
# https://groups.google.com/forum/#!topic/plataformatec-devise/5cVP6Voxk6s

user = User.create!([
  { username: 'Test 1', email: 'test1@ojala.com', password: 'password', password_confirmation: 'password' },
  { username: 'Test 2', email: 'test2@ojala.com', password: 'password', password_confirmation: 'password' },
  { username: 'Test 3', email: 'test3@ojala.com', password: 'password', password_confirmation: 'password' }
])
# user.skip_confirmation!
# user.confirm!
user.save!

# NOTE ccm: This configuration will result in:
# ArgumentError: When assigning attributes, you must pass a hash as an argument.

# user = User.new([
#   { username: 'Test 1', email: 'test1@ojala.com', password: 'password', password_confirmation: 'password' },
#   { username: 'Test 2', email: 'test2@ojala.com', password: 'password', password_confirmation: 'password' },
#   { username: 'Test 3', email: 'test3@ojala.com', password: 'password', password_confirmation: 'password' }
# ])
# user.skip_confirmation!
# # user.confirm!
# user.create

# Load categories

categories_data = YAML.load_file(Rails.root.join('db/seeds/categories.yml'))

categories_data.each do |c|
  category = Category.find_or_create_by(name: c['name'])
  category.save
end
