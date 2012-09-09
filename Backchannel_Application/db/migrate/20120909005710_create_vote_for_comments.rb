class CreateVoteForComments < ActiveRecord::Migration
  def change
    create_table :vote_for_comments do |t|

      t.timestamps
    end
  end
end
