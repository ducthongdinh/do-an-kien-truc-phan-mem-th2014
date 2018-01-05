class AddProductIdToResource < ActiveRecord::Migration[5.1]
  def change
    add_column :resources, :product_id, :integer
  end
end
