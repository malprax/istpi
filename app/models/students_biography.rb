# == Schema Information
#
# Table name: students_biographies
#
#  id                                   :integer          not null, primary key
#  name                                 :string
#  stambuk                              :string
#  jenis_kelamin                        :string
#  tempat_lahir                         :string
#  tanggal_lahir                        :string
#  agama                                :string
#  alamat_rumah_rt                      :string
#  alamat_rumah_rw                      :string
#  alamat_rumah_kota                    :string
#  alamat_rumah_kabupaten               :string
#  alamat_rumah_kodepos                 :string
#  siswa_no_kontak                      :string
#  siswa_email                          :string
#  ayah_nama                            :string
#  ayah_tempat_lahir                    :string
#  ayah_tanggal_lahir                   :string
#  ayah_no_kontak                       :string
#  ayah_alamat_rt                       :string
#  ayah_alamat_rw                       :string
#  ayah_alamat_kota                     :string
#  ayah_alamat_kabupaten                :string
#  ayah_alamat_kodepos                  :string
#  ayah_pendidikan_terakhir             :string
#  ayah_pekerjaan                       :string
#  ibu_nama                             :string
#  ibu_tempat_lahir                     :string
#  ibu_tanggal_lahir                    :string
#  ibu_no_kontak                        :string
#  ibu_alamat_rt                        :string
#  ibu_alamat_rw                        :string
#  ibu_alamat_kota                      :string
#  ibu_alamat_kabupaten                 :string
#  ibu_alamat_kodepos                   :string
#  ibu_pendidikan_terakhir              :string
#  ibu_pekerjaan                        :string
#  wali_nama                            :string
#  wali_tempat_lahir                    :string
#  wali_tanggal_lahir                   :string
#  wali_no_kontak                       :string
#  wali_alamat_rt                       :string
#  wali_alamat_rw                       :string
#  wali_alamat_kota                     :string
#  wali_alamat_kabupaten                :string
#  wali_alamat_kodepos                  :string
#  wali_pendidikan_terakhir             :string
#  wali_pekerjaan                       :string
#  fakultas                             :string
#  jurusan                              :string
#  sekolah_sd                           :string
#  sekolah_sd_tahun_lulus               :string
#  sekolah_smp_tahun_lulus              :string
#  sekolah_smu_tahun_lulus              :string
#  perguruan_tinggi_asal                :string
#  perguruan_tinggi_asal_tahun_terakhir :string
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

class StudentsBiography < ActiveRecord::Base
end
