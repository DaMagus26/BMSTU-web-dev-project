class CreateSemiFinalScores < ActiveRecord::Migration[7.0]
  def change
    create_table :semi_final_scores do |t|
      t.integer :analysis, default: 0
      t.integer :applicability, default: 0
      t.integer :innovativeness, default: 0

      t.timestamps
    end

    add_reference :semi_final_scores, :teams, foreign_key: true, null: false
    add_reference :semi_final_scores, :users, foreign_key: true, null: false
  end
end
