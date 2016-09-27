json.array!(@choose_electrical_subjects) do |choose_electrical_subject|
  json.extract! choose_electrical_subject, :id, :electrical_subject_id, :studiyear_id, :user_id
  json.url choose_electrical_subject_url(choose_electrical_subject, format: :json)
end
