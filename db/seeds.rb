# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Article.destroy_all
User.destroy_all 

10.times do
    User.create!(first_name: Faker::JapaneseMedia::DragonBall.character, last_name: Faker::JapaneseMedia::DragonBall.race, email: Faker::Internet.email, description: Faker::JapaneseMedia::OnePiece.akuma_no_mi, password: Faker::Internet.password(min_length: 8))
end

