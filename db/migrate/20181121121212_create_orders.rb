class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.reference :user
      t.reference :jewel

      t.timestamps
    end
  end
end
