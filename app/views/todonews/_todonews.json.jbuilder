json.extract! todonews, :id, :title, :notes, :place, :created_at, :updated_at
json.url todonews_url(todonews, format: :json)