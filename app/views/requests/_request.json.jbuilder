json.extract! request, :id, :url, :verb_http, :headers, :host, :uri, :response_body, :response_headers, :created_at, :updated_at
json.url request_url(request, format: :json)
