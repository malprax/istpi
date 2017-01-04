json.array!(@outcoming_mails) do |outcoming_mail|
  json.extract! outcoming_mail, :id, :address, :date, :abouts, :nomor_petunjuk
  json.url outcoming_mail_url(outcoming_mail, format: :json)
end
