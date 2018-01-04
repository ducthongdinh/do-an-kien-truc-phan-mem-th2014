class AuctionSessionsController < ApplicationController
    def create
        if @auction_session = current_user.auction_sessions.create(auction_session_params)
            redirect_to root_url
        end
    end
    private
    def auction_session_params
      params.require(:auction_session).permit(:auction_id, :price)
    end
end
