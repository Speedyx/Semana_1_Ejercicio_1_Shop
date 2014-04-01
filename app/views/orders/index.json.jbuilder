json.array!(@orders) do |order|
  json.extract! order, :id, :status, :payment, :address, :city, :name, :surname
  json.url order_url(order, format: :json)
end
