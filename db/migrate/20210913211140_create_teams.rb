class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :city
      t.string :league
      t.string :standing
      t.belongs_to :users, foreign_key: true

    end
  end
end
