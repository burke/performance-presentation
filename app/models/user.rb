class User < ActiveRecord::Base

  has_many :tweets

  has_many :followee_followings, foreign_key: :follower_id
  has_many :followees, through: :followee_followings, foreign_key: :followee_id

  has_many :follower_followings, foreign_key: :followee_id
  has_many :followers, through: :follower_followings, foreign_key: :follower_id
  
end 
