class AddSchoolRefToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_reference :portfolios, :school, foreign_key: true
  end
end
