class Portfolio < ApplicationRecord
  belongs_to :school, optional: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  has_many :portfolio_comments, dependent: :destroy
  has_many :portfolio_languages, dependent: :destroy, foreign_key: 'portfolio_id'
  has_many :programming_languages, through: :portfolio_languages, source: :programming_language

  validates :name, presence: true
  validates :creation_period, presence: true
  validates :study_period, presence: true
  validates :deploy_url, presence: true, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :github_url, format: { with: /\A#{URI::regexp(%w(http https))}\z/, allow_blank: true }
  validates :comment, presence: true, length: { maximum: 255 }
end

# github_urlは「入力した場合のみ」バリデーションをかける。