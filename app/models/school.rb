class School < ApplicationRecord
  has_many :portfolios
  has_many :users
end
