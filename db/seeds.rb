# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
100.times do
    Livro.create(
      nomelivro: Faker::Book.title,
      autor: Faker::Book.author,
      categoria: Faker::Book.genre,
      quantidade: Faker::Number.between(from: 1, to: 20)
    )
  end