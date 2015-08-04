json.array!(@products) do |product|
  json.extract! product, :id, :name, :link, :tagline, :platform
  json.url product_url(product, format: :json)
end
