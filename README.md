# README

# events テーブル
| Column              | Type       | Options                   |
| ------------------- | ---------- | --------------------------|
| title               | string     | null: false               |
| text                | text       | null: false               |
| start_time          | datetime   |                           |
| end_time            | datetime   |                           |
| user_id             | integer    |                           |

### Association
- belongs_to : user

## users テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| email                  | string     | null: false                    |
| encrypted_password     | string     | null: false                    |

### Association
- has_many : events