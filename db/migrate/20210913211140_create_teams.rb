class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :city
      t.string :league
      t.string :standing
      t.integer :wins
      t.integer :losses
      t.string :logo
    end
  end
end
