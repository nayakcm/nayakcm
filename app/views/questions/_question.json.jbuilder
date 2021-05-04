json.extract! question, :id, :title, :description, :level, :time_taken, :created_at, :updated_at
json.url question_url(question, format: :json)
