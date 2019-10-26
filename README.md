# mercari  DB設計
## usersテーブル
 
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|profile|text|default: ""|
|image|string|default: ""|
 
 
### Association
- has_many :items
- has_many :perchaces
 
## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|integer|foreign_key:true|
### Association
- belongs_to :items
 
## itemsテーブル
 
|Column|Type|Options|
|------|----|-------
|name|string|null: false|
 
### Association
- has_many :users, through: :groups_users
- has_many :groups_users
- has_many :messages
 
## perchacesテーブル
 
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index|
|email|string|null: false, unique: true, index|
|password|string|null: false|
 
### Association
- has_many :groups, through: :groups_users
- has_many :groups_users
- has_many :messages
 
## groups_usersテーブル
 
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
 
### Association
- belongs_to :group
- belongs_to :user

### 酒井ここから
## private_informationsテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|integer|null: false|
|seller_id|integer|null: false|
|item_id|integer||null: false|
 
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|price|integer|null: false|
|description|string|
|comment_id|integer|
|title|string||null: false|
|category_id|integer|null: false|
|statuses|string|null: false|
|regions|string|null: false|
|shipping_charge|integer|null: false|
|delivery_source|string|null: false|
|shipping_days|integer|null: false|
|shipping_method|string|null: false|
|buyer_id|integer|null: false|
|seller_id|integer|null: false|
|brand_id|integer|null: false|
|like_id|integer|null: false|
### Association
- belongs_to :user
- has_many :categories
- has_many :comments
- has_many :images
 
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string||null: false|
|user_id|integer|null: false|
|item_id|integer|null: false|
|improper|integer|null: false|
### Association
- belongs_to :itme
 
### 酒井ここまで
 
 
## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|cards_id|integer|null: false|
|cards_number|integer||
### Association
 
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brands_id|integer|null: fasle|
|brands_name|string||
### Association
- belongs_to :items
 
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|categories_id|integer|null: false|
|categories_name|string||
### Association
- belongs_to :items

 
