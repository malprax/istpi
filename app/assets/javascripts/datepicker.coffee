# work
# $(document).ready ->
#   $('.datepicker').datepicker()
#   return

$(document).ready ->
  $('.datepicker').datepicker(
    format: 'DD, dd MM yyyy'
    todayBtn: 'linked'
    language: 'id'
    calendarWeeks: true
    autoclose: true
    todayHighlight: true)
  return
