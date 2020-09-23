class Item < ApplicationRecord
  has_one :buy
  has_many :comments
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :text,  presence: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :deliver_fee_id, presence: true
  validates :shop_from_id, presence: true
  validates :lead_time_id, presence: true

end
