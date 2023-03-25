class ChangeColumnTypeInProperties < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :postcode, :string
  end
end
