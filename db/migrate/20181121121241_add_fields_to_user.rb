class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :adress, :text
    add_column :users, :admin, :boolean
  end
end
