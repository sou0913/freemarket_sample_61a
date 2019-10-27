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
|prefectures|integer|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
|user|references|foreign_key: true|
 
### Association
- belongs_to :user
 
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|description|string|null: false|
|title|string||null: false|null: false|
|category|references|foreign_key: true|
|status|integer|null: false|
|region|integer|null: false|
|shipping_charge|integer|null: false|
|delivery_source|integer|null: false|
|shipping_day|integer|null: false|
|shipping_method|integer|null: false|
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
- belongs_to :item
 
 
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

### Association
- belongs_to :item

## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|item|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
 
## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_kana|string|null: false|
|first_kana|string|null: false|
|postal_code|string|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
|phone_number|string|null: false, unique: true|
|user|references|foreign_key: true|

### Association
- belongs_to :user