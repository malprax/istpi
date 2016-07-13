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

class Registration < ActiveRecord::Base
  before_create {generate_token(:kode_formulir)}
  scope :current, -> {order('name DESC')}
  def to_param
    #code
    "#{kode_formulir}"
  end

  def generate_token(column)
    #code
    begin
        self[column] = SecureRandom.urlsafe_base64(5)
    end while Registration.exists?(column => self[column])
  end

  def self.search(query)
    #code
    where("lower(nama) like lower(?) OR lower(referal) like lower(?) OR lower(jurusan_peminat) like lower(?)", "%#{query}%", "%#{query}%","%#{query}%")
  end

end
