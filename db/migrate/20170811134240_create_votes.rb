class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.string :voteable_type
      t.integer :voteable_id
      t.boolean :votes

      t.timestamps
    end
  end
end
