class Player < ActiveRecord::Base
    belongs_to :team

    def team_roster
        team.map{|player| Team.first.players}
    end
end