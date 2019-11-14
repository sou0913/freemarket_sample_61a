require 'rails_helper'

describe User do
  describe '#create' do
    context 'can save' do
      # 1. SNSで登録をする
      it "is valid with factorybot data" do
        user = build(:user)
        expect(user).to be_valid
      end

      # 2. メールアドレスで登録をする
      it "is valid without uid and provider" do
        user = build(:user, uid: nil, provider: nil)
        expect(user).to be_valid
      end

      # 3. 電話番号入力なしでも登録できる
      it "is valid with building_name" do
        user = build(:user, phone_number: nil)
        expect(user).to be_valid
      end

      # 4. 建物名がなくても登録できる
      it "is valid with phone_number" do
        user = build(:user, building_name: nil)
        expect(user).to be_valid
      end

      # 5. 建物名と電話番号がなくても登録できる
      it "is valid without building_name and phone_number" do
        user = build(:user, building_name: nil, phone_number: nil)
        expect(user).to be_valid
      end
      # 6. nicknameが19文字以下では登録できること
      it "is valid with a nickname that has less than 19 characters " do
        user = build(:user, nickname: "aaaaaaaaaaaaaaaaaaa")
        expect(user).to be_valid
      end

      # 7. passwordが6文字以上であれば登録できること
      it "is valid with a password that has more than 6 characters " do
        user = build(:user, password: "a00000", password_confirmation: "a00000")
        user.valid?
        expect(user).to be_valid
      end
    end

    context 'can not save' do
      # 1. nicknameが空では登録できないこと
      it "is invalid without a nickname" do
        user = build(:user, nickname: nil)
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end

      # 2. nicknameが20文字以上であれば登録できないこと
      it "is invalid with a nickname that has more than 7 characters " do
        user = build(:user, nickname: "aaaaaaaaaaaaaaaaaaaaa")
        user.valid?
        expect(user.errors[:nickname]).to include("is too long (maximum is 19 characters)")
      end

      # 3. emailが空では登録できないこと
      it "is invalid without a email" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end

      # 4. 重複したemailが存在する場合登録できないこと
      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end

      # 5. passwordが空では登録できないこと
      it "is invalid without a password" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end

      # 6. passwordが5文字以下であれば登録できないこと
      it "is invalid with a password that has less than 5 characters " do
        user = build(:user, password: "a0000", password_confirmation: "a0000")
        user.valid?
        expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
      end

      # 7. passwordが存在してもpassword_confirmationが空では登録できないこと
      it "is invalid without a password_confirmation although with a password" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("doesn't match Password")
      end

      # 8. family_nameが空だとエラー
      it "is invalid without a family_name" do
        user = build(:user, family_name: nil)
        user.valid?
        expect(user.errors[:family_name]).to include("can't be blank")
      end

      # 9. first_nameが空だとエラー
      it "is invalid without a first_name" do
        user = build(:user, first_name: nil)
        user.valid?
        expect(user.errors[:first_name]).to include("can't be blank")
      end

      # 10. family_kanaが空だとエラー
      it "is invalid without a family_kana" do
        user = build(:user, family_kana: nil)
        user.valid?
        expect(user.errors[:family_kana]).to include("can't be blank")
      end

      # 11. first_kanaが空だとエラー
      it "is invalid without a first_kana" do
        user = build(:user, first_kana: nil)
        user.valid?
        expect(user.errors[:first_kana]).to include("can't be blank")
      end

      # 12. birthdayが空だとエラー
      it "is invalid without a birthday" do
        user = build(:user, birthday: nil)
        user.valid?
        expect(user.errors[:birthday]).to include("can't be blank")
      end

      # 13. postal_codeが空だとエラー
      it "is invalid without a postal_code" do
        user = build(:user, postal_code: nil)
        user.valid?
        expect(user.errors[:postal_code]).to include("can't be blank")
      end

      # 14. prefecturesが空だとエラー
      it "is invalid without a prefectures" do
        user = build(:user, prefectures: nil)
        user.valid?
        expect(user.errors[:prefectures]).to include("can't be blank")
      end

      # 15. cityが空だとエラー
      it "is invalid without a city" do
        user = build(:user, city: nil)
        user.valid?
        expect(user.errors[:city]).to include("can't be blank")
      end

      # 16. house_numberが空だとエラー
      it "is invalid without a house_number" do
        user = build(:user, house_number: nil)
        user.valid?
        expect(user.errors[:house_number]).to include("can't be blank")
      end
    end
  end
end