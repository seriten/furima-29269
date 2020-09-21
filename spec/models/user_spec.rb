require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameが40文字以下で登録できる' do
        @user.nickname = 'asdfghjkl'
        expect(@user).to be_valid
      end
      it 'passwordが6文字以上であれば登録できる' do
        @user.password = '000aaa'
        @user.password_confirmation = '000aaa'
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nicknameが空だと登録できない' do
        @user.nickname = ' '
        @user.valid?
        expect(@user.errors.full_messages).to include('Nicknameを入力してください')
      end

      it 'nicknameが40文字以上であれば登録できない' do
        @user.nickname = 'qwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopp'
        @user.valid?
        expect(@user.errors.full_messages).to include('Nicknameは40文字以内で入力してください')
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールを入力してください')
      end

      it 'メールアドレスは@を含む必要があること' do
        @user.email = 'asdfghjkl.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end

      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください', 'パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'passwordが5文字以下であれば登録できない' do
        @user.password = '000aa'
        @user.password_confirmation = '000aa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'passwordが半角数字のみでは登録できない' do
        @user.password = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it 'passwordが半角英字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end

      it "family_nameがない場合は登録できないこと" do
        @user.family_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Family nameを入力してください')
      end

      it 'family_nameが全角入力でなければ登録できないこと' do
        @user.family_name = 'yamada'
        @user.valid?
        expect(@user.errors.full_messages).to include('Family nameは不正な値です')
      end

      it "family_kanaがない場合は登録できないこと" do
        @user.family_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Family kanaを入力してください')
      end

      it 'family_kanaが全角入力でなければ登録できないこと' do
        @user.family_kana = 'yamada'
        @user.valid?
        expect(@user.errors.full_messages).to include('Family kanaは不正な値です')
      end

      it "first_nameがない場合は登録できないこと" do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('First nameを入力してください')
      end

      it 'first_nameが全角入力でなければ登録できないこと' do
        @user.first_name = 'taro'
        @user.valid?
        expect(@user.errors.full_messages).to include('First nameは不正な値です')
      end


      it "first_kanaがない場合は登録できないこと" do
        @user.first_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('First kanaを入力してください')
      end

      it 'first_kanaが全角入力でなければ登録できないこと' do
        @user.first_kana = 'taro'
        @user.valid?
        expect(@user.errors.full_messages).to include('First kanaは不正な値です')
      end


      it "birthdayがない場合は登録できないこと" do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Birthdayを入力してください')
      end
    end
  end
end
