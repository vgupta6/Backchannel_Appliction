class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :commentCount
      t.integer :voteCount
      t.string :createdBy

      t.timestamps
    end
  end
end
