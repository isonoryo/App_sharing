class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many :portfolio_comments, dependent: :destroy
  has_many :portfolio_languages, dependent: :destroy, foreign_key: 'portfolio_id'
  has_many :programming_languages, through: :portfolio_languages, source: :programming_language
  validates :name, presence: true
end
