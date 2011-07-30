class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :content
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    create_table :followings do |t|
      t.integer :follower_id
      t.integer :followee_id
    end 
  end
end
