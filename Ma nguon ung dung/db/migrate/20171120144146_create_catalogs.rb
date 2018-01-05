class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.string :name,  null: false, default: "" 
      t.text :description,  null: false, default: "" 
      t.timestamps
    end
    add_index :catalogs, :name, unique: true
    add_index :catalogs, :description, unique: true
  end
end
