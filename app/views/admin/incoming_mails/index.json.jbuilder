json.array!(@incoming_mails) do |incoming_mail|
  json.extract! incoming_mail, :id, :address, :date, :abouts, :nomor_petunjuk
  json.url incoming_mail_url(incoming_mail, format: :json)
end
