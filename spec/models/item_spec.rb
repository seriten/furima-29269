require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context "商品が出品できる場合" do
      it "ログインしているユーザーだけが、出品ページへ遷移できること" do
      end
      it "画像は1枚必須であること" do
      end

      it "商品名が必須であること" do
      end


      it "商品の説明が必須であること" do
      end

      it "カテゴリーの情報が必須であること" do
      end

      it "商品の状態についての情報が必須であること" do
      end

      it "配送料の負担についての情報が必須であること" do
      end

      it "発送元の地域についての情報が必須であること" do
      end

      it "発送までの日数についての情報が必須であること" do
      end

      it "価格についての情報が必須であること" do
        
      end

      it "価格の範囲が、¥300~¥9,999,999の間であること" do
        
      end

      it "販売価格は半角数字のみ入力可能であること" do
        
      end


      it "入力された販売価格によって、非同期的に販売手数料や販売利益が変わること" do
        
      end


    end
    context "商品が出品できない場合" do

      it "画像は1枚必須であること" do
        @item.image = nil
        binding.pry
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end

      it "商品名が必須であること" do
        @item.title = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
      end


      it "商品の説明が必須であること" do
      end

      it "カテゴリーの情報が必須であること" do
      end

      it "商品の状態についての情報が必須であること" do
      end

      it "配送料の負担についての情報が必須であること" do
      end

      it "発送元の地域についての情報が必須であること" do
      end

      it "発送までの日数についての情報が必須であること" do
      end

      it "価格についての情報が必須であること" do
        
      end

      it "価格の範囲が、¥300~¥9,999,999の間であること" do
        
      end

      it "販売価格は半角数字のみ入力可能であること" do
        
      end


      it "入力された販売価格によって、非同期的に販売手数料や販売利益が変わること" do
        
      end

    end
  end
end