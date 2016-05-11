json.array!(@sathishes) do |sathish|
  json.extract! sathish, :id, :name, :semester, :marks, :address
  json.url sathish_url(sathish, format: :json)
end
