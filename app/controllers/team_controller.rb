class TeamController < ApplicationController

  get "/team" do
    Team.all.to_json(:include => :players)
  end

end