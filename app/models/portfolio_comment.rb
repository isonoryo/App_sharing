class PortfolioComment < ApplicationRecord
  belongs_to :portfolio, optional: true
end
