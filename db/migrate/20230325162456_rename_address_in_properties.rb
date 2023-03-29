class RenameAddressInProperties < ActiveRecord::Migration[7.0]
  def change
    rename_column :properties, :address, :street
  end
end
