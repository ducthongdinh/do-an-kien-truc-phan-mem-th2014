class CreateCatalogProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :catalog_products do |t|
      t.belongs_to :catalog, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
