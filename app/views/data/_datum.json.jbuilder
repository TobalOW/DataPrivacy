json.extract! datum, :id, :name, :created_at, :updated_at
json.url datum_url(datum, format: :json)
