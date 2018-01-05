class CreateServiceRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :service_registers do |t|
      t.string :card_number, default: "", null: false
      t.date :start_time, default: "", null: false
      t.date :end_time, default: "", null: false
        
      t.timestamps
    end
  end
end
