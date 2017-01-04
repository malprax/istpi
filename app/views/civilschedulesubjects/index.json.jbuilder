json.array!(@civilschedulesubjects) do |civilschedulesubject|
  json.extract! civilschedulesubject, :id, :civil_subject_id, :lecture1_id, :lecture2_id, :lecture3_id, :day, :time_id, :year_id, :room_id, :count
  json.url civilschedulesubject_url(civilschedulesubject, format: :json)
end
