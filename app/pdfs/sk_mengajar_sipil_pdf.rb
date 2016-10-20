class SkMengajarSipilPdf< Prawn::Document
  def initialize(civilschedulesubject)
    super(top_margin: 30, left_margin: 50, bottom_margin: 60, :page_size  => 'A4', :template_page => 2)
    @civilschedulesubject = civilschedulesubject
    @pembantu_rektor_i = FunctionalStructural.where(:jabatan => 'Pembantu Rektor I').first
    @tahun_ajaran = Studiyear.where(:status => 'true').first
    #isi surat
        kopsurat
        garis
        nomor
        perihal
        konsideran1
      start_new_page
        kopsurat
        garis
        konsideran2
        tandatangan1
        tembusan
      start_new_page
        kopsurat
        garis
        lampiran
        jadwal
        tandatangan2
        catatan
      start_new_page
        kopsurat
        garis
        materi_dosen_1
      start_new_page
        kopsurat
        garis
        materi_dosen_2

    #akhir surat
  end

  def kopsurat
    bounding_box([10, cursor], :width => 500, :height => 84) do
        logo = "#{Rails.root}/app/assets/images/logo_istpi_copy.png"
        image "#{logo}", scale: 0.12, :at => [0, cursor-1]
        text_box "YAYASAN PEMBANGUNAN INDONESIA", :at  => [70,cursor-6], :size  => 10
        text_box "INSTITUT SAINS DAN TEKNOLOGI PEMBANGUNAN INDONESIA", :at  => [70,cursor-24], :size  => 12, :style  => :bold
        text_box "Jl. Andi Pangerang Pettarani No.99B Makassar, 90222, www.ist-pi.com", :at  => [70,cursor-44], :size  => 8, :style  => :bold
    end
  end

  def garis
    #code
    stroke do
      stroke_color '000000'
      line_width 1
      stroke_horizontal_rule
      move_down 3
      horizontal_line(0, 509)
    end
    move_down 20
  end

  def nomor
    #code
    bounding_box([80, cursor], :width => 500, :height => 80) do
        text_box "SURAT KEPUTUSAN", :at  => [120,cursor], :size  => 12
        text_box "INSTITUS SAINS DAN TEKNOLOGI PEMBANGUNAN INDONESIA", :at  => [0,cursor-20], :size  => 12
        text_box "NOMOR: 01/SK/IST-PI/IX/#{@civilschedulesubject.created_at.strftime('%Y')}", :at  => [90,cursor-40], :size  => 12
    end
  end

  def perihal
    #code
    bounding_box([80, cursor], :width => 500, :height => 80) do
      text_box "TENTANG", :at  => [150,cursor], :size  => 12
      text_box "PENGANGKATAN DOSEN PENGAMPUH MATA KULIAH", :at  => [30,cursor-20], :size  => 12
      text_box "SEMESTER #{@tahun_ajaran.even_odd.upcase} TAHUN AKADEMIK #{@tahun_ajaran.name}", :at  => [45,cursor-40], :size  => 12
    end
  end

  def konsideran1
    #code
    bounding_box([0, cursor], :width => 500, :height => 800) do
        text_box "Menimbang :", :at  => [40,cursor], :size  => 12
        text_box "a. Bahwa untuk kelancaran pelaksanaan kuliah semester ganjil tahun", :at  => [60,cursor-20], :size  => 12
        text_box "   akademik #{@tahun_ajaran.name}, maka dipandang perlu mengangkat dosen", :at  => [74,cursor-40], :size  => 12
        text_box "   pengampuh mata kuliah.", :at  => [74,cursor-60], :size  => 12
        text_box "b. Bahwa untuk tujuan tersebut di atas, maka dipandang perlu menerbitkan", :at  => [60,cursor-80], :size  => 12
        text_box "   surat keputusan pengangkatan dosen pengampuh mata kuliah.", :at  => [74,cursor-100], :size  => 12
        text_box "c. Bahwa yang tersebut namanya dalam surat keputusan ini dianggap", :at  => [60,cursor-120], :size  => 12
        text_box "   mampu menjalankan tugas sebagai dosen pengampuh mata kuliah yang", :at  => [74,cursor-140], :size  => 12
        text_box "   dibebankan.", :at  => [74,cursor-160], :size  => 12
        text_box "Mengingat :", :at  => [40,cursor-180], :size  => 12
        text_box "a. Undang-undang No. 20 tahun 2003 tentang sistem pendidikan nasional", :at  => [60,cursor-200], :size  => 12
        text_box "b. Peraturan pemerintah No. 60 tahun 1999 tentang Pendidikan Tinggi", :at  => [60,cursor-220], :size  => 12
        text_box "c. Statuta IST-Pembangunan Indonesia Makassar", :at  => [60,cursor-240], :size  => 12
        move_down 20
        text_box "MEMUTUSKAN", :at  => [220,cursor-260], :size  => 12
        text_box "Menetapkan :", :at  => [40,cursor-280], :size  => 12
        text_box "a. Pertama :", :at  => [60,cursor-300], :size  => 12
        text_box "   Mengangkat Saudara(i) : #{@civilschedulesubject.lecture1.name}, untuk", :at  => [74,cursor-320], :size  => 12
        text_box "   mengampuh mata kuliah semester ganjil tahun akademik 2016/2017", :at  => [74,cursor-340], :size  => 12
        text_box "   (Nama mata kuliah dan waktu terlampir).", :at  => [74,cursor-360], :size  => 12
        text_box "b. Kedua :", :at  => [60,cursor-380], :size  => 12
        text_box "   Segala hal yang berhubungan dengan pengangkatan dosen pengampuh", :at  => [74,cursor-400], :size  => 12
        text_box "   mata kuliah dibebankan kepada IST-Pembangunan Indonesia Makassar.", :at  => [74,cursor-420], :size  => 12
    end
  end

  def konsideran2
    #code
    bounding_box([0, cursor], :width => 500, :height => 100) do
        text_box "c. Ketiga :", :at  => [60,cursor], :size  => 12
        text_box "   Surat keputusan ini mulai berlaku pada tanggal ditetapkannya, dan", :at  => [74,cursor-20], :size  => 12
        text_box "   apabila terdapat kekeliruan dalam keputusan ini maka akan diperbaiki", :at  => [74,cursor-40], :size  => 12
        text_box "   sebagaimana mestinya", :at  => [74,cursor-500], :size  => 12
    end
  end

  def tandatangan1
    #code
    bounding_box([0, cursor], :width => 500, :height => 300) do
        text_box "Ditetapkan    :    Di Makassar", :at  => [60,cursor], :size  => 12
        text_box "pada Tanggal  :    1 September 2016", :at  => [60,cursor-20], :size  => 12
        move_down 10
        text_box "Pembantu Rektor I", :at  => [60,cursor-40], :size  => 12
        text_box "IST-Pembangunan Indonesia", :at  => [60,cursor-60], :size  => 12
        move_down 60
        text_box "#{@pembantu_rektor_i.lecture.name}", :at  => [60,cursor-80], :size  => 12
    end
  end

  def tembusan
    #code
    bounding_box([0, cursor], :width => 500, :height => 300) do
      text_box "Tembusan :", :at  => [60,cursor], :size  => 12
      text_box "1. Ketua Yayasan YASPI Makassar", :at  => [60,cursor-20], :size  => 12
      text_box "2. Dekan Teknik IST-Pembangunan Indonesia", :at  => [60,cursor-40], :size  => 12
      text_box "3. Ketua Ketua Prodi IST-Pembangunan Indonesia", :at  => [60,cursor-60], :size  => 12
      text_box "4. Arsip Dosen", :at  => [60,cursor-80], :size  => 12
    end
  end

  def lampiran
    #code
    bounding_box([0, cursor], :width => 500, :height => 40) do
      text_box "Lampiran : SK No. 01/SK/IST-PI/IX/#{@civilschedulesubject.created_at.strftime('%Y')}, tentang pengangkatan Dosen ", :at  => [60,cursor-20], :size  => 12
      text_box "Pengampuh Mata Kuliah Semester #{@tahun_ajaran.even_odd} TA #{@tahun_ajaran.name} atas nama:", :at  => [60,cursor-40], :size  => 12
    end
  end

  def jadwal
    #code
    bounding_box([0, cursor], :width => 500, :height => 60) do
      text_box "JADWAL PERKULIAHAN IST-PI MAKASSAR, SEMESTER #{@tahun_ajaran.even_odd.upcase} ", :at  => [60,cursor-20], :size  => 12
      text_box "TAHUN AJARAN #{@tahun_ajaran.name}", :at  => [60,cursor-40], :size  => 12
    end
    bounding_box([60, cursor], :width => 500, :height => 80) do
      data = [ ["No", "Hari", "Waktu", "Mata Kuliah", "SKS", "Ruang", "Prodi"],
              ["1","#{@civilschedulesubject.day}", "#{@civilschedulesubject.classtime.time}", "#{@civilschedulesubject.civil_subject.name.upcase}", "#{@civilschedulesubject.civil_subject.credit}", "#{@civilschedulesubject.classroom.room.upcase}","T. Sipil"],

              ]
      table(data, :cell_style => { :inline_format => true }) do
          # values = cells.columns(1..-1).rows(1..-1)
          # bad_sales = values.filter do |cell|
          #   cell.content.to_i < 40
          # end
          # bad_sales.background_color = "FFAAAA"
          # good_sales = values.filter do |cell|
          #   cell.content.to_i > 70
          # end
          # good_sales.background_color = "AAFFAA"
      end
    end
  end

  def tandatangan2
    #code
    bounding_box([0, cursor], :width => 500, :height => 160) do
        text_box "IST-Pembangunan Indonesia", :at  => [60,cursor], :size  => 12
        text_box "Pembantu Rektor I", :at  => [60,cursor-20], :size  => 12
        move_down 60
        text_box "#{@pembantu_rektor_i.lecture.name}", :at  => [60,cursor-40], :size  => 12
    end
  end

  def catatan
    #code
    bounding_box([0, cursor], :width => 500, :height => 100) do
        text_box "Catatan", :at  => [60,cursor], :size  => 10
        text_box "Diminta agar menyampaikan Rencana Pembelajaran Semester (RPS) dan Satuan Acara", :at  => [60,cursor-20], :size  => 10
        text_box "Perkuliahan (SAP) kepada Prodi masing-masing sebelum perkuliahan dimulai", :at  => [60,cursor-40], :size  => 10
    end
  end

  def materi_dosen_1
    #code
    bounding_box([0, cursor], :width => 500, :height => 100) do
        text_box "DOSEN                        : #{@civilschedulesubject.lecture1.name.upcase}", :at  => [60,cursor], :size  => 10
        text_box "MATA KULIAH / KODE  : #{@civilschedulesubject.civil_subject.name.upcase} / #{@civilschedulesubject.civil_subject.code.upcase}", :at  => [60,cursor-20], :size  => 10
        text_box "HARI, JAM                   : #{@civilschedulesubject.day}, #{@civilschedulesubject.classtime.time}", :at  => [60,cursor-40], :size  => 10
        text_box "RUANG                        : #{@civilschedulesubject.classroom.room.upcase}", :at  => [60,cursor-60], :size  => 10
        text_box "KELAS                         : -", :at  => [60,cursor-80], :size  => 10
    end
    bounding_box([60, cursor], :width => 500, :height => 800) do
      data = [ ["No", "Tanggal", "Pokok Bahasan", "Uraian Pokok Bahasan", "Dosen", "Ketua Kelas"],
              ["1","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["2","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["3","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["4","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["5","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["6","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["7","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["8","", "", "", "", ""],
              ["","", "", "", "", ""],
              ["","", "", "", "", ""],
              ]
      table(data, :cell_style => { :inline_format => true }) do
          # values = cells.columns(1..-1).rows(1..-1)
          # bad_sales = values.filter do |cell|
          #   cell.content.to_i < 40
          # end
          # bad_sales.background_color = "FFAAAA"
          # good_sales = values.filter do |cell|
          #   cell.content.to_i > 70
          # end
          # good_sales.background_color = "AAFFAA"
      end
    end
  end

  def materi_dosen_2
    #code
    bounding_box([60, cursor], :width => 500, :height => 600) do
      data = [ ["No", "Tanggal", "Pokok Bahasan", "Uraian Pokok Bahasan", "Dosen", "Ketua Kelas"],
      ["9","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["10","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["11","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["12","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["13","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["14","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["15","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["16","", "", "", "", ""],
      ["","", "", "", "", ""],
      ["","", "", "", "", ""],
              ]
      table(data, :cell_style => { :inline_format => true }) do
          # values = cells.columns(1..-1).rows(1..-1)
          # bad_sales = values.filter do |cell|
          #   cell.content.to_i < 40
          # end
          # bad_sales.background_color = "FFAAAA"
          # good_sales = values.filter do |cell|
          #   cell.content.to_i > 70
          # end
          # good_sales.background_color = "AAFFAA"
      end
    end
  end
end
