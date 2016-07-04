#   Table Structure
#   t.string :full_name
#   t.string :makassar_address
#   t.string :makassar_phone
#   t.string :country_address
#   t.string :country_phone
#   t.string :school_camefrom
#   t.date :pass_year_school
#   t.string :faculty, default: "teknik"
#   t.string :sub_faculty, default: "mesin"
#   t.string :concentrate_id

class RegistrationPdf < Prawn::Document
  def initialize(registration)
    super(top_margin: 30, left_margin: 50, :page_size  => 'A4')
    @registration = registration
    bounding_box([10, cursor], :width => 500, :height => 84) do
      header
    end
    stroke do
      stroke_color '000000'
      line_width 1
      stroke_horizontal_rule
      move_down 3
      horizontal_line(0, 509)
    end

    move_down 10
    kode_formulir
    move_down 20
    line_items
    nama
    line_items
    makassar
    line_items
    alamat_makassar
    line_items
    telepon_makassar
    line_items
    daerah
    line_items
    alamat_daerah
    line_items
    telepon_daerah
    line_items
    asal_sekolah
    line_items
    tahun_lulus
    line_items
    fakultas
    line_items
    jurusan
    line_items
    konsentrasi
    line_items_2
    catatan_penting
    line_items
    ket_formulir
    line_items
    biaya_pendaftaran
    line_items
    biaya_SPP
    line_items
    foto
    line_items
    ktp
    line_items
    ijazah
    line_items
    transkrip_nilai
    move_down 10
    dicetak

  end

  def header
    logo = "#{Rails.root}/app/assets/images/logo_istpi_copy.png"
    image "#{logo}", scale: 0.08, :at => [0, cursor+14]

    text_box "YAYASAN PEMBANGUNAN INDONESIA", :at  => [70,cursor], :size  => 10

    text_box "INSTITUS SAINS DAN TEKNOLOGI PEMBANGUNAN INDONESIA", :at  => [70,cursor-14], :size  => 12, :style  => :bold

    # text_box "FAKULTAS TEKNIK", :at  => [70,cursor-30], :size  => 25, :style  => :bold
    # text_box "Jurusan Teknik Pertambangan, Jurusan Teknik Mesin, Jurusan Teknik Informatika", :at  => [70,cursor-55], :size  => 8, :style  => :bold

    text_box "Jl. Andi Pangerang Pettarani No.99B Makassar, 90222, www.istpi.ac.id", :at  => [70,cursor-64], :size  => 8, :style  => :bold

  end

  def kode_formulir
    text_box "Kode Formulir :   MABA09-#{@registration.kode_formulir}", :at  => [290,cursor]
    move_down 10
  end
  def nama
    text "nama                     :   #{@registration.full_name}".upcase
  end

  def makassar
    text "makassar".upcase
  end

  def alamat_makassar
    text_box "alamat            :   #{@registration.mks_address}".upcase, :at  => [20,cursor]
    move_down 10
  end

  def telepon_makassar
    text_box "no telepon   :   #{@registration.mks_phone}".upcase, :at  => [20,cursor]
    move_down 20

  end

  def daerah
    text "daerah".upcase
  end

  def alamat_daerah
    text_box "alamat            :   #{@registration.country_address}".upcase, :at  => [20,cursor]
    move_down 10
  end

  def telepon_daerah

     text_box "no telepon   :   #{@registration.country_phone}".upcase, :at  => [20,cursor]
     move_down 20

  end

  def line_items
    move_down 10
  end

  def line_items_2
    move_down 20
  end

  def asal_sekolah
    text "asal sekolah     :   #{@registration.school_camefrom}".upcase
  end

  def tahun_lulus
      text "tahun lulus       :   #{@registration.pass_year_school}".upcase
  end

  def fakultas
      text "fakultas              :   #{@registration.faculty}".upcase
  end

  def jurusan
      text "jurusan               :   #{@registration.sub_faculty}".upcase
  end

  def konsentrasi
      text "konsentrasi      :   #{@registration.concentrate}".upcase
  end

  def catatan_penting
    text "Catatan Penting :"
  end

  def ket_formulir
    text "Formulir ini dibawa ke kampus ISTPI pada ruang Rektor dan melampirkan: "

  end

  def biaya_pendaftaran
    text "    1. Biaya Pendaftaran Sebesar Rp 250.000,-"
  end

  def biaya_SPP
    text "    2. Biaya Pembayaran SPP pertama Sebesar Rp 1.500.000,-"
  end

  def foto
    text "    3. Foto berwarna 3x4 sebanyak 2 lembar"
  end

  def ktp
    text "    4. Foto Kopi KTP"
  end

  def ijazah
    text "    5. Foto Kopi Ijazah Yang Telah Di Legalisir"
  end

  def transkrip_nilai
    text "    6. Foto Kopi Transkrip Nilai Yang Telah Di Legalisir"
  end

  def dicetak
    text "    7. Formulir Ini Dicetak Dengan Ukuran Kertas A4"

  end
end
