# == Schema Information
#
# Table name: registrations
#
#  id               :integer          not null, primary key
#  nama             :string
#  tempat_lahir     :string
#  tanggal_lahir    :string
#  jenis_kelamin    :string
#  alamat           :string
#  kontak_person    :string
#  asal_sekolah     :string
#  tahun_lulus      :string
#  fakultas_peminat :string
#  jurusan_peminat  :string
#  kode_formulir    :string
#  referal          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
