# mercari  DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|profile|text|default: ""|
|image|string|default: ""|
 
### Association
- has_many :items
- has_many :purchaces
- has_many :cards
- has_one :private_information
- has_one :address
 
## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item|references|foreign_key:true|
### Association
- belongs_to :item
 
## private_informationsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|family_kana|string|null: false|
|first_kana|string|null: false|
|birthday|date|null: false|
|postal_code|string|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
|user|references|null: false, foreign_key: true|
 
### Association
- belongs_to :user
 
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|description|string|
|title|string||null: false|
|category|references|foreign_key: true|
|statuses|string|null: false|
|regions|string|null: false|
|shipping_charge|integer|null: false|
|delivery_source|string|null: false|
|shipping_days|integer|null: false|
|shipping_method|string|null: false|
|dealing|integer|null: false default: 0|
|user|references|foreign_key: true|
|brand|references|foreign_key: true|
 
### Association
- belongs_to :user
- has_many :categories
- has_many :comments
- has_many :images
 
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string||null: false|
|user|references|foreign_key: true|
|item|references|foreign_key: true|
 
### Association
- belongs_to :itme
 
 
## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|user|references|foreign_key: true|
### Association
- belongs_to :user
 
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- belongs_to :item
 
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
- has_many :images
 
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string||null: false|
|user|references|foreign_key: true|
|item|references|foreign_key: true|
 
### Association
- belongs_to :item
 
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- belongs_to :item
 
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :item
