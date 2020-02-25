class AddUserRefToPortfolioComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :portfolio_comments, :user, foreign_key: true
  end
end
