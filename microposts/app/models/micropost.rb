class Micropost < ApplicationRecord
  belongs_to :user
  has_many :middlefavors
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :middlefavors, dependent: :destroy
  has_many :likes, through: :middlefavors, source: :user
end
