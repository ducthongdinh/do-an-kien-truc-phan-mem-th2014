class CreateAuctionSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :auction_sessions do |t|
      t.belongs_to :auction, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.float :price
      t.timestamps
    end
  end
end
