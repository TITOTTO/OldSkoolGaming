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

# Article 1
Article.create(
    title: 'Super Mario World',
    price: 10,
    typeofgame:
    console:
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a5/Super_Mario_World_SNES.png/220px-Super_Mario_World_SNES.png'
),
# Article 2
Article.create(
    title: 'The Legend of Zelda: A Link to the Past',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a6/Legend_of_Zelda_A_Link_to_the_Past_SNES.png/220px-Legend_of_Zelda_A_Link_to_the_Past_SNES.png'
),
  # Article 3
Article.create(
    title: 'Super Mario Kart',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a2/Super_Mario_Kart_SNES.png/220px-Super_Mario_Kart_SNES.png'
),
  # Article 4
Article.create(
    title: 'Super Metroid',
    typeofgame:
    console:
    year: 1994,
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/Super_Metroid_SNES.png/220px-Super_Metroid_SNES.png'
),
  # Article 5
Article.create(
    title: 'Chrono Trigger',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Chrono_Trigger_SNES.png/220px-Chrono_Trigger_SNES.png'
),
 # Article 6
Article.create(
    title: 'Super Mario 64',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/ad/Super_Mario_64_box.png/220px-Super_Mario_64_box.png'
),
  # Article 7
Article.create(
    title: 'The Legend of Zelda: Ocarina of Time',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/The_Legend_of_Zelda_Ocarina_of_Time_box_art.png/220px-The_Legend_of_Zelda_Ocarina_of_Time_box_art.png'
),
  # Article 8
Article.create(
    title: 'The Legend of Zelda: Majora\'s Mask',
    typeofgame:
    console:
    price: 10,
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/The_Legend_of_Zelda_Majora%27s_Mask_box_art.png/220px-The_Legend_of_Zelda_Majora%27s_Mask_box_art.png'
)
