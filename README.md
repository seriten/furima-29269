# テーブル設計

## users テーブル

| Column    | Type --| Options    |
|------=----|--------|------------|
| id        | int    | nill: false|
|  name     | string | nill: false|
| email     | string | nill: false|
| nickname  | string | nill: false|
| create_at | string | nill: false|
| update_at | string | nill: false|
| password  | string | nill: false|

## Association

- has_many :items
- has_many :comment

## item テーブル

| Column      | Type --| Options     |
|-------------|--------|-------------|
| id          | int    | nill: false |
| title       | string | nill: false |
| image       | string | nill: false |
| price       | int    | nill: false |
| text        | string | nill: false |
| create_at   | string | nill: false |
| update_at   | string | nill: false |
| status      | string | nill: false |
| deliver_fee | int    | nill: false |
| lead_time   | string | nill: false |
| shop_from   | string | nill: false |
| category    | string | nill: false |
| user_id     | int    | nill: false |

## Association

- has_one :buys
- has_many :comments
- belongs_to :users

## comments テーブル

| Column      | Type --| Options     |
|-------------|--------|-------------|
| id          | int    | nill: false |
| user_id     | int    | nill: false |
| item_id     | int    | nill: false |
| text        | string | nill: false |

## Association

- belongs_to :users
- belongs_to :items

## buys　テーブル

| Column      | Type --| Options     |
|-------------|--------|-------------|
| user_id     | int    | nill: false |
| item_id     | int    | nill: false |
| deliver_id  | int    | nill: false |


## Association

- belongs_to :items
- has_one :delivers

## delivers　テーブル

| Column      | Type --| Options     |
|-------------|--------|-------------|
| cardnumber  | int    | nill: false |
| cvc         | int    | nill: false |
| exp_year    | int    | nill: false |
| exp_momth   | int    | nill: false |
| postal_code | int    | nill: false |
| prefecture  | string | nill: false |
| city        | string | nill: false |
| add1        | string | nill: false |
| add2        | string | nill: false |
| tel         | int    | nill: false |

## Association

- belongs_to :buys

