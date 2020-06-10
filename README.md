# photogram DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|text|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :tweets_hashtags
- has_many :hashtags, through: :tweets_hashtags

## hashtagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
### Association
- has_many :tweets_hashtags
- has_many :tweets, through: :tweets_hashtags

## tweets_hashtagsテーブル
|Column|Type|Options|
|------|----|-------|
|tweet_id|integer|null: false, foreign_key: true|
|hashtag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :hashtag

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tweet

