class Product < ApplicationRecord

    # belongs_to :bill
    # belongs_to :catalogs
   belongs_to :auction
    # belongs_to :auctions_session
    # belongs_to :product_report
    has_many :resources
end
