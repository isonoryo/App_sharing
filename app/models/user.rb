class User < ApplicationRecord
  belongs_to :school
  has_many :portfolios, dependent: :destroy
  has_many :portfolio_comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_portfolios, through: :likes, source: :portfolio
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name,  presence: true, length: { maximum: 30 }
  mount_uploader :profile_image, ImageUploader
  # mount_uploader :profile_image, DefaultUploader
end
