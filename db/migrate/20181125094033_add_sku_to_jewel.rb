class AddSkuToJewel < ActiveRecord::Migration[5.2]
  def change
    add_column :jewels, :sku, :string
    add_monetize :jewels, :price, currency: { present: false }
  end
end
