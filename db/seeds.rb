# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#gem faker pour générer des listes factices
 require 'faker'

Création de 10 user

10.times do
	user = User.create(first_name: Faker::DragonBall.character, last_name: Faker::Name.last_name, email: Faker::Internet.email)
 end


#Création de 10 article

User.all.each do |var|
10.times do
	article = Article.create(title: "Article written by #{var.first_name}", content: "#{Faker::Community.quotes}", author_id: var.id)
end
end
#Création de 5 categorie

5.times do
	categorie = Categorie.create(name: Faker::Cat.name)
end

#Création de 15 coment

15.times do
	comment = Comment.create(content: Faker::BojackHorseman.tongue_twister)
end

