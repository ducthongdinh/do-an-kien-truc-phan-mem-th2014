json.array!(@product) do |product|
  json.extract! product, :id, :name
  json.url product_url(product, format: :json)
end
