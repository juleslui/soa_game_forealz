# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

Creature.delete_all
Move.delete_all
Location.delete_all

Creature.create!([
  {id: 1, name: "Pikachu", nickname: "", kind: "Electric", hp: 500, description: "Yellow", user_id: nil, location_id: 1},
  {id: 2, name: "Squirtle", nickname: "", kind: "Water", hp: 500, description: "Blue", user_id: nil, location_id: 2},
  {id: 3, name: "Charmander", nickname: "", kind: "Fire", hp: 500, description: "Red", user_id: nil, location_id: 3},
  {id: 4, name: "Bulbasaur", nickname: "", kind: "Grass", hp: 500, description: "Green", user_id: nil, location_id: 4},
  {id: 5, name: "Ghastly", nickname: "", kind: "Ghost", hp: 500, description: "Void of Endless Anguish Black", user_id: nil, location_id: 5}
])

Move.create!([
  {id: 1, name: "Thunder Wave", max_number: 30, kind: "Electric", damage: 10, creature_id: 1},
  {id: 2, name: "Thunder Bolt", max_number: 20, kind: "Electric", damage: 70, creature_id: 1},
  {id: 3, name: "Thunder Shock", max_number: 25, kind: "Electric", damage: 80, creature_id: 1},
  {id: 4, name: "Quick Attack", max_number: 20, kind: "Normal", damage: 50, creature_id: 1},
  {id: 5, name: "Water Gun", max_number: 25, kind: "Water", damage: 60, creature_id: 2},
  {id: 6, name: "Bubble", max_number: 20, kind: "Water", damage: 80, creature_id: 2},
  {id: 7, name: "Tackle", max_number: 30, kind: "Normal", damage: 40, creature_id: 2},
  {id: 8, name: "Bubblebeam", max_number: 15, kind: "Water", damage: 90, creature_id: 2},
  {id: 9, name: "Flamethrower", max_number: 20, kind: "Fire", damage: 100, creature_id: 3},
  {id: 10, name: "Scratch", max_number: 25, kind: "Fire", damage: 50, creature_id: 3},
  {id: 11, name: "Ember", max_number: 25, kind: "Fire", damage: 70, creature_id: 3},
  {id: 12, name: "Fire Spin", max_number: 25, kind: "Fire", damage: 40, creature_id: 3},
  {id: 13, name: "Vine Whip", max_number: 30, kind: "Grass", damage: 80, creature_id: 4},
  {id: 14, name: "Razor Leaf", max_number: 25, kind: "Grass", damage: 70, creature_id: 4},
  {id: 15, name: "Solarbeam", max_number: 15, kind: "Grass", damage: 120, creature_id: 4},
  {id: 16, name: "Leech Seed", max_number: 30, kind: "Grass", damage: 20, creature_id: 4},
  {id: 17, name: "Lick", max_number: 30, kind: "Ghost", damage: 80, creature_id: 5},
  {id: 18, name: "Spite", max_number: 20, kind: "Ghost", damage: 80, creature_id: 5},
  {id: 19, name: "Hypnosis", max_number: 20, kind: "Psychic", damage: 80, creature_id: 5},
  {id: 20, name: "Mean Look", max_number: 25, kind: "Normal", damage: 80, creature_id: 5}
])

Location.create!([
  {id: 1, name: "Ashs House", x_coordinates: 30, y_coordinates: 40},
  {id: 2, name: "Pond", x_coordinates: 30, y_coordinates: 50},
  {id: 3, name: "Volcano", x_coordinates: 30, y_coordinates: 60},
  {id: 4, name: "Bush", x_coordinates: 30, y_coordinates: 70},
  {id: 5, name: "Cemetery", x_coordinates: 30, y_coordinates: 80}
])

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
