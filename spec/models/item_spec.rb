require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    end
    context "出品条件" do

      it "すべての情報が正しいフォーマットで入力されていれば出品登録できる" do
        expect(@item).to be_valid
      end

      it "画像は1枚必須であること" do
        @item.image = nil
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

      it "カテゴリーが--を示すid値（0）だと出品登録できない" do
        @item.category_id = "0"
        @item.valid?
        expect(@item.errors.full_messages).to include("Categoryは0以外の値にしてください")
      end


      it "商品の状態についての情報が必須であること" do
        @item.status_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Statusを入力してください")
      end

      it "商品状態が--を示すid値（0）だと出品登録できない" do
        @item.status_id = "0"
        @item.valid?
        expect(@item.errors.full_messages).to include("Statusは0以外の値にしてください")
      end


      it "配送料の負担についての情報が必須であること" do
        @item.deliver_fee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Deliver feeを入力してください")
      end

      it "配送料負担が--を示すid値（0）だと出品登録できない" do
        @item.deliver_fee_id = "0"
        @item.valid?
        expect(@item.errors.full_messages).to include("Deliver feeは0以外の値にしてください")
      end


      it "発送元の地域についての情報が必須であること" do
        @item.shop_from_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Shop fromを入力してください")

      end

      it "発送元地域が--を示すid値（0）だと出品登録できない" do
        @item.shop_from_id = "0"
        @item.valid?
        expect(@item.errors.full_messages).to include("Shop fromは0以外の値にしてください")

      end


      it "発送までの日数についての情報が必須であること" do
        @item.lead_time_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Lead timeを入力してください")

      end

      it "発送までの日数が--を示すid値（0）だと出品登録できない" do
        @item.lead_time_id = "0"
        @item.valid?
        expect(@item.errors.full_messages).to include("Lead timeは0以外の値にしてください")

      end


      it "価格についての情報が必須であること" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceを入力してください")
      end

      it "価格が299以下だと出品登録できないと" do
        @item.price = "100"
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceは299以上の値にしてください")
      end


      it "価格が10,000,000以上だと出品登録できない" do
        @item.price = "99,999,999,999"
        @item.valid?
        expect(@item.errors.full_messages).to include("Priceは数値で入力してください")
      end

  end
end
