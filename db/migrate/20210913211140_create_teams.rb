class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :city
      t.string :conference
      t.string :standing
      t.integer :wins
      t.integer :losses
      
    

    end
  end
end
