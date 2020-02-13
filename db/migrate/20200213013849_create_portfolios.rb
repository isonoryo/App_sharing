class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :name, null: false
      t.text :comment
      t.string :creation_period, null: false
      t.string :study_period, null: false
      t.string :deploy_url, null: false
      t.string :github_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
