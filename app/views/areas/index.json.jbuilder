json.array!(@areas) do |area|
  json.extract! area, :area_criminale, :note_area, :ambit_id
  json.url area_url(area, format: :json)
end
