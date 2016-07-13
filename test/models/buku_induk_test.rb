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

require 'test_helper'

class BukuIndukTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
