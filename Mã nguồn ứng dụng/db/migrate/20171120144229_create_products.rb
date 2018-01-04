class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|      
      t.string :name,  null: false, default: "" 
      t.text :description,  null: false, default: "" 
      t.boolean :is_valid
      t.float :buy_now_price
      t.float :starting_price
      t.belongs_to :user, index: true
      t.timestamps
    end
    
  end
end
