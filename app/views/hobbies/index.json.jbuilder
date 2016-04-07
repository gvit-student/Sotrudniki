json.array!(@hobbies) do |hobby|
  json.extract! hobby, :id, :h_name
  json.url hobby_url(hobby, format: :json)
end
