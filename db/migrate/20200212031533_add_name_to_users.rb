class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :profile_image, :string
    add_column :users, :introduce, :text
  end
end
