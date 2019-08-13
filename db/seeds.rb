# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.all.each do |p|
  p.image_file.purge
end

Photo.destroy_all
User.destroy_all

counter = 0

Dir.chdir('sample_photos')

20.times do
  counter += 1
  rand_username = Faker::Internet.username
  rand_password = Faker::Compass.direction
  rand_email = Faker::Internet.unique.email
  rand_title = Faker::Hipster.sentence(word_count:3)
  rand_caption = Faker::Hipster.sentence
  user = User.new(:username => rand_username, :password => rand_password, :email => rand_email )
  user.save
  # this is a funky solution to work with ActiveStorage
  f = {:io => File.open("image_#{counter.to_s}.jpg"), :filename => "image_#{counter.to_s}", :content_type => 'image/jpg'}
  photo = user.photos.new(:title => rand_title, :caption => rand_caption)
  if photo.image_file.attach(f)
    p "Image attached!"
  end
  photo.save
end
