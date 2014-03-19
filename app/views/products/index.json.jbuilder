json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :added_at, :manufacturer, :units, :category
  json.url product_url(product, format: :json)
end
