class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :card_number_buyer,      null: false, default: ""
      t.string :card_number_seller,    null: false, default: ""
      t.integer :price,    null: false, default: 0
      t.float :commission,    null: false, default: 0.00
      t.boolean :status,    null: false, default: false
      t.integer :seller_id,   null: false, default: 0
      t.integer :buyer_id,    null: false, default: 0  
      
      t.timestamps
    end
  end
  
end
