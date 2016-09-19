json.array!(@choose_subjects) do |choose_subject|
  json.extract! choose_subject, :id, :electrical_subject_id, :studiyear_id
  json.url choose_subject_url(choose_subject, format: :json)
end
