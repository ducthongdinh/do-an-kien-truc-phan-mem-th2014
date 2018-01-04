class AuctionManagementController < ApplicationController
    def index
        @auctions = Auction.joins("INNER JOIN products ON products.id = auctions.product_id").select("auctions.id, auctions.auction_price, auctions.max_price, auctions.start_time, auctions.end_time, products.name")
        # @auctions = @auctions.to_json
        Rails.logger.debug("-----------------------------------------------------------------")
        Rails.logger.debug(@auctions)
  	end
end
