json.array!(@admin_items) do |admin_item|
  json.extract! admin_item, :id, :name, :price
  json.url admin_item_url(admin_item, format: :json)
end
