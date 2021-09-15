class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :games_played
      t.integer :at_bats
      t.float :avg
      t.integer :runs
      t.integer :hits
      t.integer :double
      t.integer :triple
      t.integer :home_runs
      t.integer :rbi
      t.integer :walks
      t.integer :strike_outs
      t.integer :stolen_bases
      t.integer :batting_avg
      t.integer :err
      t.integer :win
      t.integer :loss
      t.float :era
      t.integer :games_started
      t.integer :complete_games
      t.float :innings_pitched
      t.integer :saves
      t.belongs_to :team, foreign_key: true
    end
  end
end
