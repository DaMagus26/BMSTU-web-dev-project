class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :header, null: false
      t.text :content, null: false
      t.string :author

      t.timestamps
    end
  end
end
