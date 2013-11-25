json.array!(@magazines) do |magazine|
  json.extract! magazine, :name_magazine, :data_fondazione, :luogo_stampa, :area_id, :union_id, :group_id, :note
  json.url magazine_url(magazine, format: :json)
end
