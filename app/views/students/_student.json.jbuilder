json.extract! student, :id, :name, :address, :phone, :additional, :created_at, :updated_at
json.url student_url(student, format: :json)