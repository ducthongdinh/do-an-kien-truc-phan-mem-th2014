module AuctionHelper
    def is_owner (auction)
        if current_user
            if current_user.id == auction.user_id
                return true
            end
        end
        return false
    end

end

