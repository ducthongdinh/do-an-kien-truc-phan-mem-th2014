class CreateDeleteAuctionSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :delete_auction_sessions do |t|
      t.integer :reason
      t.text :reason_detail
      t.boolean :is_verified
      t.belongs_to :auction_session, index: true
      t.integer :user_id
      t.integer :staff_id
      t.timestamps
    end
    add_foreign_key :delete_auction_sessions, :users, column: :user_id, primary_key: "id"    
    add_foreign_key :delete_auction_sessions, :users, column: :staff_id, primary_key: "id"    
  end
end
