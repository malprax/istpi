# == Schema Information
#
# Table name: buku_induks
#
#  id                      :integer          not null, primary key
#  no_stambuk              :string
#  nama                    :string
#  jenis_kelamin           :string
#  tempat_lahir            :string
#  tanggal_lahir           :string
#  bangsa                  :string
#  agama                   :string
#  alamat                  :string
#  ijazah_terakhir         :string
#  nama_ayah               :string
#  nama_ibu                :string
#  nama_wali               :string
#  pekerjaan_orangtua_wali :string
#  tanggal_akademik        :string
#  status_akademik         :string
#  semester_akademik       :string
#  foto                    :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class BukuInduk < ActiveRecord::Base
  def self.search(query)
    #code
    where("lower(name) like lower(?) OR lower(no_stambuk) like lower(?)", "%#{query}%", "%#{query}%")
  end
end
