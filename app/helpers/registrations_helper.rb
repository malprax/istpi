module RegistrationsHelper
  def simbol_edit(value)
   content_tag(:span, value, :class => "glyphicon glyphicon-edit")
  end

  def simbol_hapus(value)
   content_tag(:span, value, :class => "glyphicon glyphicon-remove")
  end

  def simbol_cetak(value)
   content_tag(:span, value, :class => "glyphicon glyphicon-print")
  end

  def simbol_ok(value)
   content_tag(:span, value, :class => "glyphicon glyphicon-ok")
  end
end
