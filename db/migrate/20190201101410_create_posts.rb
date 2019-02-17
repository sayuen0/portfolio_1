class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.text :title
      t.string :genre

      t.timestamps
    end
  end
end