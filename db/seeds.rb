

puts "🌱 Seeding spices..."
Player.destroy_all
Team.destroy_all
User.destroy_all
# Seed your database here
30.times do 
    team_name = Faker::Sports::Basketball.unique.team
    city = Faker::Team.unique.state
    standing =Faker::Number.unique.between(from: 1, to: 30)
    wins = Faker::Number.between(from: 1, to: 72)
    losses = Faker::Number.between(from: 1, to: 72)
    team = Team.create(
        team_name: team_name,  
        city: city,
        league: "NBA",
        standing: standing,
        wins: wins,
        losses: losses)
        8.times do 
            name = Faker::Sports::Basketball.player
            number = Faker::Number.between(from: 1, to: 100)
            position = Faker::Sports::Basketball.position
            games = Faker::Number.between(from: 1, to: 72) 
            points = Faker::Number.between(from: 1, to: 30) 
            field_goals = Faker::Number.between(from: 0, to: 10)
            fg_percentage = Faker::Number.decimal(l_digits: 2)
            three_points = Faker::Number.decimal(l_digits: 2)
            freethrows = Faker::Number.decimal(l_digits: 2)
            offensive_rebounds = Faker::Number.decimal(l_digits: 2)
            defensive_rebounds =Faker::Number.decimal(l_digits: 2)
            rebounds =Faker::Number.decimal(l_digits: 2)
            assist =Faker::Number.decimal(l_digits: 2)
            blocks =Faker::Number.decimal(l_digits: 2)
            steals =Faker::Number.decimal(l_digits: 2)
            turnovers = Faker::Number.decimal(l_digits: 2)
            fouls = Faker::Number.decimal(l_digits: 2)
             Player.create(
                name: name,
                number: number,
                position: position,
                games: games,
                points: points,
                field_goals: field_goals,
                fg_percentage: fg_percentage,
                three_points: three_points,
                freethrows: freethrows,
                offensive_rebounds: offensive_rebounds,
                defensive_rebounds: defensive_rebounds,
                rebounds: rebounds,
                assist: assist,
                blocks: blocks,
                steals: steals,
                turnovers: turnovers,
                fouls: fouls,
                team_id: team.id)
        end
end






puts "✅ Done seeding!"


# puts "🌱 Seeding spices..."
# Player.destroy_all
# Team.destroy_all
# User.destroy_all
# # Seed your database here
# puts "creating Team"
#     team = Team.create(
#         team_name: "Philadelphia 76ers",  
#         city: "Philadelphia",
#         league: "Eastern Conference",
#         standing: 1,
#         wins: 49,
#         losses: 23,
#         logo: "https://i.ibb.co/j37bMR1/76ers.png")
# puts "creating players"
#              Player.create(
#                 name: "Joel Embiid",
#                 number: 21,
#                 position: "C",
#                 games: 51,
#                 points: 28,
#                 field_goals: 17.6,
#                 fg_percentage: 51.3,
#                 three_points: 1.1,
#                 freethrows: 85..9,
#                 offensive_rebounds: 2.2,
#                 defensive_rebounds: 8.4,
#                 rebounds: 10.6,
#                 assist: 2.8,
#                 steals: 1,
#                 blocks: 1.4,
#                 turnovers: 3.1,
#                 fouls: 2.4,
#                 team_id: team.id)

#              Player.create(
#                 name: "Tobias Harris",
#                 number: 12,
#                 position: "PF",
#                 games: 62,
#                 points: 19,
#                 field_goals: 17.6,
#                 fg_percentage: 51.3,
#                 three_points: 1.1,
#                 freethrows: 85..9,
#                 offensive_rebounds: 2.2,
#                 defensive_rebounds: 8.4,
#                 rebounds: 10.6,
#                 assist: 2.8,
#                 steals: 1,
#                 blocks: 1.4,
#                 turnovers: 3.1,
#                 fouls: 2.4,
#                 team_id: team.id)
             
#              Player.create(
#                 name: "Ben Simmons",
#                 number: 25,
#                 position: "PG",
#                 games: 58,
#                 points: 14,
#                 field_goals: 17.6,
#                 fg_percentage: 51.3,
#                 three_points: 1.1,
#                 freethrows: 85..9,
#                 offensive_rebounds: 2.2,
#                 defensive_rebounds: 8.4,
#                 rebounds: 10.6,
#                 assist: 2.8,
#                 steals: 1,
#                 blocks: 1.4,
#                 turnovers: 3.1,
#                 fouls: 2.4,
#                 team_id: team.id)
#              Player.create(
#                 name: "Danny Green",
#                 number: 14,
#                 position: "SF",
#                 games: 68,
#                 points: 9,
#                 field_goals: 17.6,
#                 fg_percentage: 51.3,
#                 three_points: 1.1,
#                 freethrows: 85..9,
#                 offensive_rebounds: 2.2,
#                 defensive_rebounds: 8.4,
#                 rebounds: 10.6,
#                 assist: 2.8,
#                 steals: 1,
#                 blocks: 1.4,
#                 turnovers: 3.1,
#                 fouls: 2.4,
#                 team_id: team.id)
            
#              Player.create(
#                 name: "Seth Curry",
#                 number: 31,
#                 position: "SG",
#                 games: 57,
#                 points: 12,
#                 field_goals: 17.6,
#                 fg_percentage: 51.3,
#                 three_points: 1.1,
#                 freethrows: 85..9,
#                 offensive_rebounds: 2.2,
#                 defensive_rebounds: 8.4,
#                 rebounds: 10.6,
#                 assist: 2.8,
#                 steals: 1,
#                 blocks: 1.4,
#                 turnovers: 3.1,
#                 fouls: 2.4,
#                 team_id: team.id)
# puts "✅ Done seeding!"
