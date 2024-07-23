## users テーブル

|Column             |Type           |Options                        |
|-------------------|---------------|-------------------------------|
|nickname           |string         |null: false                    |
|email              |string         |null: false, unique: true      |
|encrypted_password |string         |null: false                    |
|name               |string         |null: false                    |
|branch             |integer        |null: false                    |
|office             |integer        |null: false                    |

has_many :hiyarihatts
has_many :comments

## hiyarihatts テーブル

|Column             |Type           |Options                        |
|-------------------|---------------|-------------------------------|
|type               |integer        |null: false                    |
|title              |text           |null: false                    |
|detail             |text           |null: false                    |
|cause              |text           |null: false                    |
|measures           |text           |null: false                    |
|user               |references     |null: false, foreign_key: true |

belongs_to :user
has_many :comments

## comments テーブル

|Column             |Type           |Options                        |
|-------------------|---------------|-------------------------------|
|comment            |text           |null: false                    |
|user               |references     |null: false, foreign_key: true |

belongs_to :user
belongs_to :hiyarihatts