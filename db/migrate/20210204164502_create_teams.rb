class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.int :id
      t.string :sport_name

      t.timestamps
    end
  end
end
