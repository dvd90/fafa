class CreateJewels < ActiveRecord::Migration[5.2]
  def change
    create_table :jewels do |t|
      t.string :name
      t.boolean :available
      t.integer :price
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
