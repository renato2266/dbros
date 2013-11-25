json.array!(@dossiers) do |dossier|
  json.extract! dossier, :numero, :data, :oggetto, :testo
  json.url dossier_url(dossier, format: :json)
end
