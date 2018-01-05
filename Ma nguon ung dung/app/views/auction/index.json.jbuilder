json.array!(@auctions) do |auction|
  json.extract! auction, :id, :title
  json.url auction_url(auction, format: :json)
end
