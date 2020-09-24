class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :deliver_fee
  belongs_to_active_hash :lead_time
  belongs_to_active_hash :shop_form
  belongs_to_active_hash :status





  has_one :buy
  has_many :comments
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :price, presence: true#,format:{with: /\A[0-9]{300,9999999}+\z/ }
  validates :image, presence: true
  validates :text,  presence: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :deliver_fee_id, presence: true
  validates :shop_form_id, presence: true
  validates :lead_time_id, presence: true

end
