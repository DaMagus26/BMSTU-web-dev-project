class DeleteColumnsFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :semi_final_scores
    remove_reference :users, :final_scores
  end
end
