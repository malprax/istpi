class KrsPdf< Prawn::Document
  def initialize(choose_electrical_subject)
    super(top_margin: 30, left_margin: 50, :page_size  => 'A4')
    @choose_electrical_subject = choose_electrical_subject
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

    move_down 20
    krs_title
    fakultas
    jurusan
    semester
    nama
    stambuk
    sks_perolehan
    sks_rencana
    ip_semester_lalu
    rencana_mata_kuliah
    mata_kuliah
    total_sks

    bounding_box([360, cursor], width:200) do
    tanggal
    end
    move_down 20

    bounding_box([200, cursor], width:200) do
    disetujui
    end
    move_down 20

    bounding_box([0, cursor], width: 200) do
    ketua_jurusan
    end

    bounding_box([200, cursor+88], width: 200) do
    penasehat_akademik
    end

    bounding_box([400, cursor+88], width: 200) do
    mahasiswa
    end


  end

  def header
    logo = "#{Rails.root}/app/assets/images/logo_istpi_copy.png"
    image "#{logo}", scale: 0.12, :at => [0, cursor-1]

    text_box "YAYASAN PEMBANGUNAN INDONESIA", :at  => [70,cursor-6], :size  => 10

    text_box "INSTITUS SAINS DAN TEKNOLOGI PEMBANGUNAN INDONESIA", :at  => [70,cursor-24], :size  => 12, :style  => :bold

    # text_box "FAKULTAS TEKNIK", :at  => [70,cursor-30], :size  => 25, :style  => :bold
    # text_box "Jurusan Teknik Pertambangan, Jurusan Teknik Mesin, Jurusan Teknik Informatika", :at  => [70,cursor-55], :size  => 8, :style  => :bold

    text_box "Jl. Andi Pangerang Pettarani No.99B Makassar, 90222, www.istpi.ac.id", :at  => [70,cursor-44], :size  => 8, :style  => :bold

  end

  def krs_title
    text "KARTU RENCANA STUDI (KRS)"
    move_down 10
  end

  def fakultas
    text "Fakultas  : Teknik"
    move_down 10
  end

  def jurusan
    text "Jurusan  : Mesin"
    move_down 10
  end

  def semester
    text "Semester  : 2016/2017 Ganjil"
    move_down 20
  end

  def nama
    text "Nama  : Andrianto"
    move_down 10
  end

  def stambuk
    #code
    text "Stambuk  : 216111001"
    move_down 10
  end

  def sks_perolehan
    text "Jumlah SKS  : 100"
    move_down 10
  end

  def sks_rencana
    text "Jumlah Rencana SKS  : 24"
    move_down 10
  end

  def ip_semester_lalu
    text "IP Semester Lalu  : 3,15"
    move_down 10
  end

  def rencana_mata_kuliah
    #code
    text "Mata Kuliah Yang Direncanakan Sebagai Berikut"
    move_down 20
  end

  def mata_kuliah
    #code
    @choose_electrical_subject.electrical_subjects.each_with_index do |matakuliah, i|
    text "#{i = i + 1}. #{matakuliah.code.upcase} - #{matakuliah.name.titleize}"

    bounding_box([300,cursor+15], width: 50) do
    text "#{matakuliah.credit.upcase} SKS"
    end
    move_down 10
    end
    move_down 10
  end

  def copy_matakuliah1
    #code
    @choose_electrical_subject.electrical_subjects.each_with_index do |matakuliah, i|
    text "#{i = i + 1}. #{matakuliah.code.upcase} - #{matakuliah.name.titleize}"

    bounding_box([300,cursor+15], width: 50) do
    text "#{matakuliah.credit.upcase} SKS"
    end
    move_down 10
    end
    move_down 10
  end
  def total_sks
    #code
    bounding_box([255,cursor+15], width: 300) do
    text "Total :  20 SKS"
    end
    move_down 10
  end

  def tanggal
    #code
    text "Makassar, 26 April 2016"
    move_down 10
  end

  def disetujui
    #code
    text "Disetujui Oleh"
  end

  def ketua_jurusan
    #code
    text "Ketua Jurusan"
    move_down 60
    text "Abd. Rachman Sila, ST, MT"

  end

  def penasehat_akademik
    #code
    text "Penasehat Akademik"
    move_down 60
    text "Aulia Sabril, ST, MT"

  end

  def mahasiswa
    #code
    text "Mahasiswa"
    move_down 60
    text "Andrianto"
  end
end
