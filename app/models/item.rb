class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :deliver_fee
  belongs_to_active_hash :lead_time
  belongs_to_active_hash :shop_from
  belongs_to_active_hash :status


  has_one :buy
  has_many :comments
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
  validates :title 
  validates :price, presence: true ,format:{with: /\A[0-9]+\z/},
                   :numericality => {:greater_than_or_equal_to => 299,
                   :less_than_or_equal_to => 10000000
                     }
  validates :image
  validates :text
  validates :category_id, numericality: { other_than: 0 } 
  validates :status_id, numericality: { other_than: 0 } 
  validates :deliver_fee_id, numericality: { other_than: 0 } 
  validates :shop_from_id, numericality: { other_than: 0 } 
  validates :lead_time_id, numericality: { other_than: 0 } 
                    end
end
