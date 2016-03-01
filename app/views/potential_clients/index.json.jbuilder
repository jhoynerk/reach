json.array!(@potential_clients) do |potential_client|
  json.extract! potential_client, :id, :name, :email, :last_name, :title, :built_with_id
  json.url potential_client_url(potential_client, format: :json)
end
