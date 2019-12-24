class CreateProductProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :product_properties do |t|
      t.string :value
      t.references :property, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
