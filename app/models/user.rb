class User < ApplicationRecord
  belongs_to :school
  has_many :portfolios
  has_many :likes, dependent: :destroy
  has_many :like_portfolios, through: :likes, source: :portfolio
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :profile_image, ImageUploader
end
