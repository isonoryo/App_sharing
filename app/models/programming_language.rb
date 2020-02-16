class ProgrammingLanguage < ApplicationRecord
  has_many :portfolio_languages, dependent: :destroy, foreign_key: 'programming_language_id'
  has_many :portfolios, through: :portfolio_languages, source: :portfolio
end
