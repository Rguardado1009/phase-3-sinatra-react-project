class TeamController < ApplicationController

    get "/team" do
        Teams.all.to_json
      end

end