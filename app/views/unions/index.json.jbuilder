json.array!(@unions) do |union|
  json.extract! union, :denominazione, :sede, :area_id, :descrizione
  json.url union_url(union, format: :json)
end
