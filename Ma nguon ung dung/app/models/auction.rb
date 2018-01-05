class Auction < ApplicationRecord
    has_one :product
    accepts_nested_attributes_for :product
    has_many :auction_sessions
    # has_many :auction_report
    belongs_to :product
end
