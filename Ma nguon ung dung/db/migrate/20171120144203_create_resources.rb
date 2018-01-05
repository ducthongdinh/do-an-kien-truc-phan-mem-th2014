class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :url, default: "", null: false
      t.integer :object_id, default: -1, null: false
      t.integer :resouce_type, default: -1, null: false
      t.integer :object_type, default: -1, null: false
      
      t.timestamps
    end
  end
end
