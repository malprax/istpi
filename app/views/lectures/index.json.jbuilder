json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :nidn, :fakultas, :jurusan, :alamat, :no_kontak
  json.url lecture_url(lecture, format: :json)
end
