json.array!(@names) do |name|
  json.extract! name, :cognome_nome, :luogo_nascita, :data_nascita, :cod_fiscale, :residenza, :via, :domicilio, :cittadinanza, :professione, :soprannome, :alias, :note_generali, :ambit_id, :area_id, :group_id
  json.url name_url(name, format: :json)
end
