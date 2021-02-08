class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :sport_id
      t.string :team_name
      t.string :city
      t.string :roster
      t.string :coach
      t.string :sport_name

      t.timestamps
    end
  end
end
