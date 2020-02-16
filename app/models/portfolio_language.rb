class PortfolioLanguage < ApplicationRecord
  belongs_to :portfolio, optional: true
  belongs_to :programming_language, optional: true
end
