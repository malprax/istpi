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
  after_create  :buat_kode
  # scope :current, -> {order('name DESC')}
  attr_accessor :romawi, :kode_jurusan
  # validates_presence_of :nama, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :alamat, :kontak_person, :jurusan_peminat

  def to_param
    #code
    "#{nama}"
  end
  def buat_kode
    #code
    self.update_attributes(kode_formulir: "#{id}/#{kode_jurusan}/#{romawi}/#{created_at.strftime("%Y")}")
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
    if self.angka_bulan == 1
      self.romawi = 'I'
    elsif self.angka_bulan == 2
      self.romawi = 'II'
    elsif self.angka_bulan == 3
      self.romawi = 'III'
    elsif self.angka_bulan == 4
      self.romawi = 'IV'
    elsif self.angka_bulan == 5
      self.romawi = 'V'
    elsif self.angka_bulan == 6
      self.romawi = 'VI'
    elsif self.angka_bulan == 7
      self.romawi = 'VII'
    elsif self.angka_bulan == 8
      self.romawi = 'VIII'
    elsif self.angka_bulan == 9
      self.romawi = 'IX'
    elsif self.angka_bulan == 10
      self.romawi = 'X'
    elsif self.angka_bulan == 11
      self.romawi = 'XI'
    elsif self.angka_bulan == 12
      self.romawi = 'XII'
    end
  end

  def kode_jurusan
    #code
    if self.jurusan_peminat == "teknik sipil"
      self.kode_jurusan = 11
    elsif self.jurusan_peminat == "teknik elektro"
      self.kode_jurusan = 21
    else self.jurusan_peminat == nil
      self.kode_jurusan = 31
    end
  end

end
