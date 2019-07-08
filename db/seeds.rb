# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create(player_name: "Christopher")
Player.create(player_name: "David")

Game.create(date: "July 8, 2019", tournament_id: 0)

PlayerGame.create(player_id: 1, game_id: 1, score: 1)
PlayerGame.create(player_id: 2, game_id: 1, score: 0)

Tournament.create(date: "July 8, 2019")

PlayerTournament.create(player_id: 1, tournament_id: 1)
PlayerTournament.create(player_id: 1, tournament_id: 2)
