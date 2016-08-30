json.array!(@electrical_subjects) do |electrical_subject|
  json.extract! electrical_subject, :id, :name, :credit, :code, :category, :semester
  json.url electrical_subject_url(electrical_subject, format: :json)
end
