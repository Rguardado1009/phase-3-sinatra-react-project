class PlayerController < ApplicationController

    get "/player" do
        Player.all.to_json
      end

end