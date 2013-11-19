json.array!(@ambits) do |ambit|
  json.extract! ambit, :ambito_criminale, :note_ambito
  json.url ambit_url(ambit, format: :json)
end
