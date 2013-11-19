json.array!(@groups) do |group|
  json.extract! group, :gruppo_criminale, :note_gruppo
  json.url group_url(group, format: :json)
end
