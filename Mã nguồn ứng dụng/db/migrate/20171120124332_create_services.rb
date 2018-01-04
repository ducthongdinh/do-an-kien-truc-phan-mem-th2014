class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name,  null: false, default: ""
      t.string :description,  null: false, default: ""
      t.integer :service_price,  null: false, default: 0
      t.integer :duration,  null: false, default: 0
      
      t.timestamps
    end
    add_index :services, :name, unique: true
    add_index :services, :description, unique: true
  end

end
