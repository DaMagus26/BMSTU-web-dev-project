class CreateFinalScores < ActiveRecord::Migration[7.0]
  def change
    create_table :final_scores do |t|
      t.integer :analysis
      t.integer :applicability
      t.integer :innovativeness
      t.integer :presentation

      t.timestamps
    end

    add_reference :final_scores, :teams, foreign_key: true, null: false
    add_reference :final_scores, :users, foreign_key: true, null: false
  end
end
