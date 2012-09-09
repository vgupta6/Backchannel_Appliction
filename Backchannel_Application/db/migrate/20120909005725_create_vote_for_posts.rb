class CreateVoteForPosts < ActiveRecord::Migration
  def change
    create_table :vote_for_posts do |t|

      t.timestamps
    end
  end
end
