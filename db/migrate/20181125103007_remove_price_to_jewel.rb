class RemovePriceToJewel < ActiveRecord::Migration[5.2]
  def change
    remove_column :jewels, :price
  end
end
