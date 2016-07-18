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

#kode_formulir: index/jurusan(1 sipil, 2 elektro)/istpi/bulan(romawi)/tahun(2016)

class Registration < ActiveRecord::Base
  before_create {generate_token(:kode_formulir)}
  # before_create :kode_formulir => angka_bulan
  scope :current, -> {order('name DESC')}
  # attr_accessor :kode_daftar
  def to_param
    #code
    "#{kode_formulir}"
    # "#{angka_bulan}"
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

  def angka_bulan
    #code
     self.created_at.strftime("%m").to_i
  end

end
