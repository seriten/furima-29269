# テーブル設計

## users テーブル

| family_name     | string | nill: false|
| first_name      | string | nill: false|
| kana_1          | string | nill: false|
| kana_2          | string | nill: false|
| birthday        | string | nill: false|
| email           | string | nill: false|
| nickname        | string | nill: false|
| password        | string | nill: false|

## Association

- has_many :items
- has_many :comments

## item テーブル

| price       | int    | nill: false                    |
| text        | string | nill: false                    |
| status      | int    | nill: false                    |
| deliver_fee | int    | nill: false                    |
| lead_time   | int    | nill: false, foreign_key: true |
| shop_from   | int    | nill: false, foreign_key: true |
| category    | int    | nill: false, foreign_key: true |
| user_id     | int    | nill: false, foreign_key: true |

## Association

- has_one :buy
- has_many :comments
- belongs_to :user

## comments テーブル

| id          | int    | nill: false |
| user_id     | int    | nill: false |
| item_id     | int    | nill: false |
| text        | string | nill: false |

## Association

- belongs_to :user
- belongs_to :item

## buys　テーブル

| user_id     | int    | nill: false |
| item_id     | int    | nill: false |


## Association

- belongs_to :item
- has_one :deliver

## delivers　テーブル

| postal_code | string | nill: false, foreign_key: true |
| prefecture  | string | nill: false, foreign_key: true |
| city        | string | nill: false, foreign_key: true |
| add1        | string | nill: false, foreign_key: true |
| add2        | string |                                |
| tel         | string | nill: false                    |
| buy_id      | int    | nill: false, foreign_key: true |

## Association

- belongs_to :buy

