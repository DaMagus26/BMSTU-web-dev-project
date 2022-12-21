class AddFirstNameAndLastNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :users, :teams, foreign_key: true
  end
end
