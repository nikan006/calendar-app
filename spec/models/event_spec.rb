require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end

  describe "イベント新規登録" do
    context "新規登録できる場合" do
      it "全ての項目が入力されていれば実装できる" do
        expect(@event).to be_valid
      end
    end
    context "新規登録できない場合" do
      it "titleが空では登録できない" do
        @event.title = " "
        @event.valid?
        expect(@event.errors.full_messages).to include("タイトルを入力してください")
      end
      it "textが空では登録できない" do
        @event.text = " "
        @event.valid?
        expect(@event.errors.full_messages).to include("内容を入力してください")
      end
      it "titleが11文字以上では登録できない" do
        @event.title = "abcdefghijk"
        @event.valid?
        expect(@event.errors.full_messages).to include("タイトルは10文字以内で入力してください")
      end
    end
  end
end
