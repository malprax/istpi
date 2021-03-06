json.array!(@buku_induks) do |buku_induk|
  json.extract! buku_induk, :id, :no_stambuk, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :bangsa, :agama, :alamat, :ijazah_terakhir, :nama_ayah, :nama_ibu, :nama_wali, :pekerjaan_orangtua_wali, :tanggal_akademik, :status_akademik, :semester_akademik, :foto
  json.url buku_induk_url(buku_induk, format: :json)
end
