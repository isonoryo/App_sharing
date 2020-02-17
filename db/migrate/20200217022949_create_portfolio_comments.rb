class CreatePortfolioComments < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolio_comments do |t|
      t.text :comment
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
