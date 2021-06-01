class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.date :day
      t.integer :result
      t.text :caption

      t.timestamps
    end
  end
end
