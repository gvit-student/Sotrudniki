json.array!(@dlzhs) do |dlzh|
  json.extract! dlzh, :id, :d_name
  json.url dlzh_url(dlzh, format: :json)
end
