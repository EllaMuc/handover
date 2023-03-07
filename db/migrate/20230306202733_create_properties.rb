class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.integer :postcode
      t.date :move_in
      t.date :move_out
      t.references :user, null: false, foreign_key: true
      t.boolean :visible

      t.timestamps
    end
  end
end
