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
  # before_create {generate_token(:kode_formulir)}
  before_create :romawi, :kode_jurusan, {:buat_kode(:kode_formulir)}
  scope :current, -> {order('name DESC')}
  attr_accessor :romawi, :kode_jurusan
  def buat_kode
    #code
    "#{id}/#{kode_jurusan}/#{romawi}/#{created_at.strftime("%Y")}"
  end

  # def generate_token(column)
    #code
  #   begin
  #       self[column] = SecureRandom.urlsafe_base64(5)
  #   end while Registration.exists?(column => self[column])
  # end

  def self.search(query)
    #code
    where("lower(nama) like lower(?) OR lower(referal) like lower(?) OR lower(jurusan_peminat) like lower(?)", "%#{query}%", "%#{query}%","%#{query}%")
  end

  def angka_bulan
    #code
     self.created_at.strftime("%m").to_i
  end

  def romawi
    #code
    if angka_bulan == 1
      romawi = 'I'
    elsif angka_bulan == 2
      romawi = 'II'
    elsif angka_bulan == 3
      romawi = 'III'
    elsif angka_bulan == 4
      romawi = 'IV'
    elsif angka_bulan == 5
      romawi = 'V'
    elsif angka_bulan == 6
      romawi = 'VI'
    elsif angka_bulan == 7
      romawi = 'VII'
    elsif angka_bulan == 8
      romawi = 'VIII'
    elsif angka_bulan == 9
      romawi = 'IX'
    elsif angka_bulan == 10
      romawi = 'X'
    elsif angka_bulan == 11
      romawi = 'XI'
    elsif angka_bulan == 12
      romawi = 'XII'
    end
  end

  def kode_jurusan
    #code
    if jurusan_peminat == "teknik sipil"
      kode_jurusan = 11
    elsif kode_jurusan == "teknik elektro"
      kode_jurusan = 21
    end
  end

end
