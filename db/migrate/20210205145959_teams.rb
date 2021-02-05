class Teams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :sportsId
      t.string :team_name
      t.string :city
      t.string :roster
      t.string :headlines
      t.string :schedule

      t.timestamps
    end
  end
end