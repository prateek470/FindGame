json.extract! todo_, :id, :title, :notes, :place, :created_at, :updated_at
json.url todo__url(todo_, format: :json)