json.array!(@hobby_sotrs) do |hobby_sotr|
  json.extract! hobby_sotr, :id, :sotr_id, :hobby_id
  json.url hobby_sotr_url(hobby_sotr, format: :json)
end
