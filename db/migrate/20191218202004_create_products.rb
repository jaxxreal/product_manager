class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :upc
      t.datetime :available_on

      t.timestamps
    end
  end
end
