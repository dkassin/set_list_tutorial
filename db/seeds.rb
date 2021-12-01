# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@prince = Artist.create!(name: 'Prince')
@purple = @prince.songs.create!(title: "Purple Rain", length: 1645, play_count: 8199)
@beret = @prince.songs.create!(title: "Raspberry Beret", length: 845, play_count: 6599)
