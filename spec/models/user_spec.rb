require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "新規登録できる場合" do
      it "全ての項目が入力されていれば実装できる" do
        expect(@user).to be_valid
      end
    end
    context "新規登録できない場合" do
      it "nameが空では登録できない" do
        @user.name = " "
        @user.valid?
        expect(@user.errors.full_messages).to include "Nameを入力してください"
      end
      it "emailが空では登録できない" do
        @user.email = " "
        @user.valid?
        expect(@user.errors.full_messages).to include "Emailを入力してください"
      end
      it "passwordが空では登録できない" do
        @user.password = " "
        @user.valid?
        expect(@user.errors.full_messages).to include "Passwordを入力してください"
      end
    end
  end
end
