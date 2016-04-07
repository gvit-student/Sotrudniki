json.array!(@sotrs) do |sotr|
  json.extract! sotr, :id, :s_fam, :s_name, :s_otch, :s_date, :dlzh_id, :s_photo
  json.url sotr_url(sotr, format: :json)
end
