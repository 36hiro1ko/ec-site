class RenameColumnToItems < ActiveRecord::Migration
  def change
    rename_column :items, :prince, :price
  end
end
