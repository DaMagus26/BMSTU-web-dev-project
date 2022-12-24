class AddScoringToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :semi_final_score
    remove_column :users, :final_score
    add_reference :users, :semi_final_scores, foreign_key: true
    add_reference :users, :final_scores, foreign_key: true
  end
end
