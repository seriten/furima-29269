# テーブル設計

## users テーブル

| family_name     | string | nill: false|
| first_name      | string | nill: false|
| family_kana     | string | nill: false|
| first_kana      | string | nill: false|
| birthday        | date   | nill: false|
| email           | string | nill: false|
| nickname        | string | nill: false|
| password        | string | nill: false|

## Association

- has_many :buys
- has_many :items
- has_many :comments

## item テーブル
| title          | string | nill: false                    |
| price          | int    | nill: false                    |
| text           | text   | nill: false                    |
| status_id      | int    | nill: false                    |
| deliver_fee_id | int    | nill: false                    |
| lead_time_id   | int    | nill: false                    |
| shop_from_id   | int    | nill: false                    |
| category_id    | int    | nill: false                    |
| user_id        | int    | nill: false, foreign_key: true |

## Association

- has_one :buy
- has_many :comments
- belongs_to :user

## comments テーブル

| user_id     | int    | nill: false |
| item_id     | int    | nill: false |
| text        | string | nill: false |

## Association

- belongs_to :user
- belongs_to :item

## buys　テーブル

| user_id  | int  | nill: false, foreign_key: true  |
| item_id  | int  | nill: false, foreign_key: true  |


## Association

- belongs_to :user
- belongs_to :item
- has_one :deliver

## delivers　テーブル

| postal_code   | string | nill: false                    |
| prefecture_id | int    | nill: false                    |
| city          | string | nill: false                    |
| address       | string | nill: false                    |
| building      | string |                                |
| tel           | string | nill: false                    |
| buy_id        | int    | nill: false, foreign_key: true |

## Association

- belongs_to :buy

