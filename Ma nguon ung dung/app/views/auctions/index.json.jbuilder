json.array!(@auction) do |auction|
  json.extract! auction, :id, :auction_price
  json.url auction_url(auction, format: :json)
end
