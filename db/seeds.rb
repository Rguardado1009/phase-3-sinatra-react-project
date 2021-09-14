

puts "🌱 Seeding spices..."
Player.destroy_all
Team.destroy_all
User.destroy_all
# Seed your database here
2.times do 
    name = Faker::Sports::Basketball.player
    position = Faker::Sports::Basketball.position
    games_played = Faker::Number.number(digits: 2)
    at_bats =  Faker::Number.number(digits: 3)
    runs = Faker::Number.number(digits: 1)
     Player.create(
     name: name,
     position: position,
     games_played: games_played,
     at_bats: at_bats,
     runs: runs)
end

2.times do 
    team_name = Faker::Sports::Football.team
    city = Faker::Team.state
    league = Faker::WorldCup.group
    standing =Faker::Number.between(from: 1, to: 10)
    Team.create(
        team_name: team_name,  
        city: city,
        league: league,
        standing: standing)
end



puts "✅ Done seeding!"
