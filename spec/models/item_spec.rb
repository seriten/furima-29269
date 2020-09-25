require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    end
    context "出品条件" do

      it "画像は1枚必須であること" do
        @item.image = nil
        binding.pry
        @item.valid?
        expect(@item.errors.full_messages).to include("Imageを入力してください")
      end

      it "商品名が必須であること" do
        @item.title = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Titleを入力してください")
      end


      it "商品の説明が必須であること" do
        @item.text = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Textを入力してください")
      end

      it "カテゴリーの情報が必須であること" do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Categoryを入力してください")
      end

      it "商品の状態についての情報が必須であること" do
        @item.status_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Statusを入力してください")
      end

      it "配送料の負担についての情報が必須であること" do
        @item.deliver_fee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Deliver feeを入力してください")
      end

      it "発送元の地域についての情報が必須であること" do
        @item.shop_from_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Shop fromを入力してください")

      end

      it "発送までの日数についての情報が必須であること" do
        @item.lead_time_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Lead timeを入力してください")

      end

      it "価格についての情報が必須であること" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceを入力してください")
      end
  end
end
