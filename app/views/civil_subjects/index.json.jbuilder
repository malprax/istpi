json.array!(@civil_subjects) do |civil_subject|
  json.extract! civil_subject, :id, :name, :credit, :code, :category, :semester
  json.url civil_subject_url(civil_subject, format: :json)
end
