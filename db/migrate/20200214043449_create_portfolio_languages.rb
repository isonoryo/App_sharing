class CreatePortfolioLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolio_languages do |t|
      t.references :portfolio, foreign_key: true
      t.references :programming_language, foreign_key: true

      t.timestamps
    end
  end
end
