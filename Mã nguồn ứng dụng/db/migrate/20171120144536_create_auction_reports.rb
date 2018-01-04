class CreateAuctionReports < ActiveRecord::Migration[5.1]
  def change
    create_table :auction_reports do |t|
      t.integer :user_id
      t.integer :staff_id
      t.integer :seller_id      
      t.text :reason_report
      t.text :result_report
      t.timestamps
    end
    add_foreign_key :auction_reports, :users, column: :user_id, primary_key: "id"    
    add_foreign_key :auction_reports, :users, column: :staff_id, primary_key: "id"    
    add_foreign_key :auction_reports, :users, column: :seller_id, primary_key: "id"    
  end
end
