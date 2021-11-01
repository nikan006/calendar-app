# README

# テーブル設計

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


# アプリケーション名
- カレンダー・スケジュール管理アプリです。


# アプリケーション概要
- 個人のスケジュール管理をカレンダー形式で使用することにより、予定の管理を行う事ができます。


# URL
-  https://sample-36901.herokuapp.com/


# テスト用アカウント
- Basic認証 ID:admin pass:2222


# 利用方法
- 新規イベントを追加してカレンダー上で予定を確認できます。


# 目指した課題解決
- 個人で業務予定を立てることができ、スケジュール管理が苦手な人は調整を行うことができます。


# 洗い出した要件
- スプレットシートの要件定義になります。
  https://gyazo.com/e7a3f042c744a18ad6e13593ed4dc2a6


# 実装した機能についての画像やGIFおよびその説明
- 月間方式にてスケジュールを管理することができます。「Next」ボタンを押すと来月になります。「Previous」ボタンを押すと先月の予定を確認できます。
[![Image from Gyazo](https://i.gyazo.com/866cabbfe0c18748cfab456ba94a22e9.gif)](https://gyazo.com/866cabbfe0c18748cfab456ba94a22e9)

- 「新規イベント追加」ボタンを押すことで新規イベントを入力することができます。
  [![Image from Gyazo](https://i.gyazo.com/4c373c61c9d85c221f7f96f93b9beb54.gif)](https://gyazo.com/4c373c61c9d85c221f7f96f93b9beb54)

- タイトル・内容を空欄で記述すると日本語でエラー内容が表示されるようにしました。
  [![Image from Gyazo](https://i.gyazo.com/a64fae9eece43025b501f1686dce816f.gif)](https://gyazo.com/a64fae9eece43025b501f1686dce816f)

- スケジュールに記載してある予定を押すと記載した内容と予定日時が確認できます。
  [![Image from Gyazo](https://i.gyazo.com/dce9013b1b2e3544a3611f68a07ab8a0.gif)](https://gyazo.com/dce9013b1b2e3544a3611f68a07ab8a0)

- 「編集」ボタンを押す事でスケジュールの予定を編集することができます。
  [![Image from Gyazo](https://i.gyazo.com/2bc3de6ade16745624d0b5f92515065c.gif)](https://gyazo.com/2bc3de6ade16745624d0b5f92515065c)

- 「消去」ボタンを押す事でスケジュールの予定を消去することができます。
  [![Image from Gyazo](https://i.gyazo.com/bf9d36be34774cf042d26e0fb7576097.gif)](https://gyazo.com/bf9d36be34774cf042d26e0fb7576097)


# 実装予定機能
- ログイン・ログアウト機能
ログイン・ログアウト機能を実装し、企業単位で使用できるようにします。
また、自分のスケジュールが他の人に見られるのを防ぎます。

- リマインド機能
予定前日にトップページに予定通知が来るようにします。
スケジュール管理に使用できます。

- 検索機能
予定が複数存在し、見づらくなってしまう為、トップページに検索機能をつけます。

- 写真添付機能
メモ欄に写真・画像を添付し予定をイメージしやすくします。

- カラー分類機能
予定欄にカラーによる予定分類を使用します。
これにより「赤」は仕事、「青」はプライベート等予定分類しやすくします。

# データベース設計
ER図を下記に添付致しましたので参照ください
https://gyazo.com/f6ac9b0c532cf4d2c87f9dd02cd14e17

# ローカルでの動作環境
- 言語・フレームワーク
Ruby / Ruby on Rails 6

- 開発環境
ローカル(Ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin20])


