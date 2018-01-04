class CreateWatchLists < ActiveRecord::Migration[5.1]
  def change
    create_table :watch_lists do |t|
      t.integer :id_object,  null: false, default: 0
      t.integer :object_type,  null: false, default: 0
      t.timestamps
    end
  end
end
