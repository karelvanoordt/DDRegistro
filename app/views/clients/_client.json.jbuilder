json.extract! client, :id, :client_name, :client_rfc, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
