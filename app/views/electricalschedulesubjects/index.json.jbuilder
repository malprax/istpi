json.array!(@electricalschedulesubjects) do |electricalschedulesubject|
  json.extract! electricalschedulesubject, :id, :civil_subject_id, :lecture1_id, :lecture2_id, :lecture3_id, :day, :time_id, :year_id, :room_id, :count
  json.url electricalschedulesubject_url(electricalschedulesubject, format: :json)
end
