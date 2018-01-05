class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.float :auction_price
      t.float :max_price
      t.boolean :is_finished
      t.datetime :start_time
      t.datetime :end_time   
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
