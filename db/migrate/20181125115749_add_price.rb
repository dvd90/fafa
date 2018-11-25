class AddPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :jewels, :price_cents
    add_column :jewels, :price, :integer
  end
end
