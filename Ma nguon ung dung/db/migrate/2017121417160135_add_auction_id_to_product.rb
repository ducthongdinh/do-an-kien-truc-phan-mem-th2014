class AddAuctionIdToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :auctions, :product_id, :integer
  end
end
