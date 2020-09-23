class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string   :title            , nill: false                   
      t.integer  :price            , nill: false 
      t.text     :image            , nill: false
      t.text     :text             , nill: false                   
      t.integer  :status_id        , nill: false                   
      t.integer  :deliver_fee_id   , nill: false                   
      t.integer  :lead_time_id     , nill: false                   
      t.integer  :shop_from_id     , nill: false                   
      t.integer  :category_id      , nill: false                   
      t.integer  :user_id          , nill: false, foreign_key: true
      t.timestamps
    end
  end
end