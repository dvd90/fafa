class Addmonetise < ActiveRecord::Migration[5.2]
  def change
    add_monetize :jewels, :price, currency: { present: false }
  end
end
