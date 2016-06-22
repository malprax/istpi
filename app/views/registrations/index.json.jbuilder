json.array!(@registrations) do |registration|
  json.extract! registration, :id, :nama, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :alamat, :kontak_person, :asal_sekolah, :tahun_lulus, :fakultas_peminat, :jurusan_peminat
  json.url registration_url(registration, format: :json)
end
