class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.integer :games
      t.integer :points
      t.float :field_goals
      t.float :fg_percentage
      t.float :three_points
      t.float :freethrows
      t.float :offensive_rebounds
      t.float :defensive_rebounds
      t.float :rebounds
      t.float :assist
      t.float :steals
      t.float :turnovers
      t.float :fouls   
      t.belongs_to :team, foreign_key: true
    end
  end
end
