

puts "🌱 Seeding spices..."
Player.destroy_all
Team.destroy_all
User.destroy_all
# Seed your database here
30.times do 
    team_name = Faker::Sports::Basketball.team
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
                steals: steals,
                turnovers: turnovers,
                fouls: fouls,
                team_id: team.id)
        end
end






puts "✅ Done seeding!"
