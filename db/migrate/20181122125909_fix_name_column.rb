class FixNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :jewels, :picture, :photo
  end
end
