class CreateDamages < ActiveRecord::Migration[7.0]
  def change
    create_table :damages do |t|
      t.string :title
      t.text :description
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
