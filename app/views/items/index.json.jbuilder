json.array!(@items) do |item|
  json.extract! item, :id, :name, :prince
  json.url item_url(item, format: :json)
end
