json.array!(@fascicles) do |fascicle|
  json.extract! fascicle, :numero, :note
  json.url fascicle_url(fascicle, format: :json)
end
