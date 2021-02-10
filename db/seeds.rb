# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'rest-client'

# api_resp = RestClient.get(" https://api.sportsdata.io/v3/nfl/scores/json/Teams")
# data = JSON.parse(api_resp)

User.destroy_all
Team.destroy_all
Sport.destroy_all
Favorite.destroy_all

users = User.create([
    {username: 'EKim123', password: 'GOAT321', email: 'EK123@gmail.com', age: 27},
    {username: 'GMist24', password: 'Rookie24', email: 'gfm@aol.com', age: 30},
    {username: 'AnnieZ', password: 'ProCoder', email: 'Zheng@hotmail.com', age: 25}
])

sports = Sport.create([
    {sport_name: "Basketball"},
    {sport_name: "Football"},
    {sport_name: "Hockey"},
    {sport_name: "Baseball"}
])

teams = Team.create([
    {sport_id: sports[0].id, team_name: 'Cavaliers', city: 'Cleveland', roster: 'Delly, Sexton, Drummond, McGee, Okoro, Garland, Love, Allen, Prince, Wade, Stevens, Windler, Nance, Osman, Dotson', coach: "JB Bickerstaff", sport_name: sports[0].sport_name},
    {sport_id: sports[1].id, team_name: 'Giants', city: 'New York', roster: 'Jones, Barkley, Engram, Gallman, Lawrence, Williams, Slayton, Martinez, Tate, Hernandez, Ryan, Bradberry, Gano, Peppers, Shepard, Ximines', coach: "Joe Judge", sport_name: sports[1].sport_name},
    {sport_id: sports[2].id, team_name: 'Rangers', city: 'New York', roster: 'Bitetto, Lemieux, Kreider, Fox, Strome, Zibanejad, Rooney, Johnson, Gauthier, Panarin', coach: "David Quinn", sport_name: sports[2].sport_name},
    {sport_id: sports[0].id, team_name: 'Knicks', city: 'New York', roster: 'Robinson, Toppin, Knox, Rose, Barrett, Gibson, Quickley, Peyton', coach: "Tom Thibs", sport_name: sports[0].sport_name},
    {sport_id: sports[0].id, team_name: 'Nets', city: 'Brooklyn', roster: 'Durant, Harden, Irving, Harris, Jordan, Claxton, TLC', coach: "Steve Nash", sport_name: sports[0].sport_name},
    {sport_id: sports[1].id, team_name: 'Jets', city: 'New York', roster: 'Darnold, Maye, Mims, Flacco, Gore, Crowder, Mosley, Perriman, Ficken', coach: "Robert Saleh", sport_name: sports[1].sport_name},
])

favorites = Favorite.create([
    {user_id: users[0].id, team_id: teams[0].id},
    {user_id: users[2].id, team_id: teams[1].id}

])

# team = Team.create([{Cleveland Cavaliers}])
# freeAgents = Free_Agents.create([])
# players = Players.create([
#     {name: "Darius Garland", position: "Point Guard", team: "Cleveland Cavaliers", college: "Vanderbilt", age: 21},
#     {name: "Jarrett Allen", position: "Center", team: "Cleveland Cavaliers", college: "The University of Texas at Austin", age: 22},
#     {name: "Marques Bolden", position: "Center", team: "Cleveland Cavaliers", college: "Duke", age: 22},
#     {name: "Matthew Dellavedova", position: "Point Guard", team: "Cleveland Cavaliers", college: "Saint Mary's", age: 30},
#     {name: "Damyean Dotson", position: "Shooting Guard", team: "Cleveland Cavaliers", college: "University of Houston", age: 26},
#     {name: "Andre Drummond", position: "Center", team: "Cleveland Cavaliers", college: "UConn", age: 27},
#     {name: "Kevin Love", position: "Power Forward", team: "Cleveland Cavaliers", college: "UCLA", age: 32},
#     {name: "JaVale McGee", position: "Center", team: "Cleveland Cavaliers", college: "Nevada", age: 33},
#     {name: "Larry Nance Jr.", position: "Power Forward", team: "Cleveland Cavaliers", college: "Wyoming", age: 28},
#     {name: "Isaac Okoro", position: "Shooting Guard", team: "Cleveland Cavaliers", college: "Auburn", age: 20},
#     {name: "Cedi Osman", position: "Small Forward", team: "Cleveland Cavaliers", college: "Bahçeşehir Doğa Koleji", age: 25},
#     {name: "Taurean Prince", position: "Power Forward", team: "Cleveland Cavaliers", college: "Baylor", age: 26},
#     {name: "Collin Sexton", position: "Point Guard", team: "Cleveland Cavaliers", college: "Alabama", age: 22},
#     {name: "Lamar Stevens", position: "Power Forward", team: "Cleveland Cavaliers", college: "Penn State", age: 23},
#     {name: "Dean Wade", position: "Power Forward", team: "Cleveland Cavaliers", college: "Kansas State", age: 24},
#     {name: "Dylan Windler", position: "Shooting Guard", team: "Cleveland Cavaliers", college: "Belmont", age: 24},
#     {name: "Kyle Korver", position: "Shooting Guard", team: "Free Agent", college: "Creighton", age: 39},
#     {name: "Isaiah Thomas", position: "Point Guard", team: "Free Agent", college: "Washington", age: 32},
#     {name: "Gerald Green", position: "Shooting Guard", team: "Free Agent", college: "None", age: 35},
#     {name: "Rondae Hollis-Jefferson", position: "Power Forward", team: "Free Agent", college: "Arizona", age: 26},
#     {name: "Ersan Ilyasova", position: "Power Forward", team: "Free Agent", college: "None", age: 33},
#     {name: "Shabazz Napier", position: "Point Guard", team: "Free Agent", college: "UConn", age: 29},
#     {name: "Emmanuel Mudiay", position: "Point Guard", team: "Free Agent", college: "None", age: 24},
#     {name: "Jamal Crawford", position: "Shooting Guard", team: "Free Agent", college: "Michigan", age: 40},
#     {name: "Allen Crabbe", position: "Small Forward", team: "Free Agent", college: "California", age: 28},
#     {name: "Tim Frazier", position: "Point Guard", team: "Free Agent", college: "Penn State", age: 30},
#     {name: "Michael Kidd-Gilchrist", position: "Power Forward", team: "Free Agent", college: "Kentucky", age: 27},
#     {name: "Jeremy Lin", position: "Point Guard", team: "Free Agent", college: "Harvard", age: 32},
#     {name: "Wilson Chandler", position: "Small Forward", team: "Free Agent", college: "DePaul", age: 33},
#     {name: "Mario Hezonja", position: "Small Forward", team: "Free Agent", college: "None", age: 25},
#     {name: "Thon Maker", position: "Center", team: "Free Agent", college: "None", age: 23},
#     {name: "Andre Roberson", position: "Small Forward", team: "Free Agent", college: "Colorado", age: 29},
#     {name: "Dion Waiters", position: "Shooting Guard", team: "Free Agent", college: "Syracuse", age: 29}
# ])