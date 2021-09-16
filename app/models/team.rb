class Team < ActiveRecord::Base
    has_many :players

    # def single_team
    #     Team.map do |team|
    # end

end