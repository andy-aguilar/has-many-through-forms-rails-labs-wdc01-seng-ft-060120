# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all
User.destroy_all
Category.destroy_all

10.times do
   Category.create(name: Faker::Hipster.word) 
end

10.times do
   Post.create(title: Faker::Book.title, content: Faker::Hipster.paragraph, categories: Category.all.sample(3))
end

10.times do
   User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

30.times do
   Comment.create(content: Faker::Hipster.paragraph, user: User.all.sample, post: Post.all.sample)
end