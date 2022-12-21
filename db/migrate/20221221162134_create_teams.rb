class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.integer :track
      t.decimal :semi_final_score, precision: 3
      t.decimal :final_score, precision: 3

      t.timestamps
    end
  end
end
