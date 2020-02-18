class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :learning_start, :date
  end
end
