class User < ApplicationRecord 
   has_many :buys
   has_many :items
   has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true, length: { maximum: 40 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i
  validates :password, confirmation: true,
                       length: { minimum: 6 },
                       format: { with: VALID_PASSWORD_REGEX }

   validates :family_name, presence: true,format: {with: /\A[ぁ-んァ-ン一-龥]/ }  
   validates :family_kana, presence: true,format: {with: /\A[ァ-ヶー－]+\z/ } 
   validates :first_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ } 
   validates :first_kana, presence: true,format: {with: /\A[ァ-ヶー－]+\z/ } 
   validates :birthday, presence: true
                   
end
