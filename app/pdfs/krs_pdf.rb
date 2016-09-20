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


end
