class CreateReading < ActiveRecord::Migration[7.0]
  def change
    create_table :readings do |t|
      t.string :type_of_reading
      t.integer :result
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
