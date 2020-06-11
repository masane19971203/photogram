class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tweets_hashtags
  has_many :hashtags, through: :tweets_hashtags
end
