# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Drink.destroy_all
Ingredient.destroy_all
DrinkIngredient.destroy_all

sokka = User.create(name: "Sokka", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1266228772635729928%2FBCPq8UAk_400x400.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fsokkateamavatar&tbnid=J3AwZsYhQ7KThM&vet=12ahUKEwjBrdb6ytrrAhWNPN8KHbSoBn4QMygRegUIARDmAQ..i&docid=jqZZvCByEvvkkM&w=400&h=400&q=sokka&ved=2ahUKEwjBrdb6ytrrAhWNPN8KHbSoBn4QMygRegUIARDmAQ", age: "20", password: "abc123")


cactus_juice = Drink.create(name: "Cactus Juice", image_url: "https://vignette.wikia.nocookie.net/avatar/images/3/35/Cactus_juice.png/revision/latest?cb=20140407160124", description: "Named by Sokka, this liquid is consumed straight from cacti found in the Si Wong Desert and has strong hallucinogenic properties.", user: sokka)

cactus = Ingredient.create(name: "Cactus", emoji: "🌵")
milk = Ingredient.create(name: "Milk", emoji: "🥛")
ice = Ingredient.create(name: "Ice", emoji: "🧊")

DrinkIngredient.create(measurement: "2 cups", drink: cactus_juice, ingredient: cactus)
DrinkIngredient.create(measurement: "1/2 cups", drink: cactus_juice, ingredient: milk)
DrinkIngredient.create(measurement: "1 cup", drink: cactus_juice, ingredient: ice)