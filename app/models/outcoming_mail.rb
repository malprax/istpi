# == Schema Information
#
# Table name: outcoming_mails
#
#  id                     :integer          not null, primary key
#  address                :string
#  date                   :string
#  abouts                 :string
#  nomor_petunjuk         :string
#  isi_surat              :string
#  to                     :string
#  lampiran               :string
#  tanda_tangan_1         :string
#  jabatan_tanda_tangan_1 :string
#  tanda_tangan_2         :string
#  jabatan_tanda_tangan_2 :string
#  tanda_tangan_3         :string
#  jabatan_tanda_tangan_3 :string
#  tanda_tangan_4         :string
#  jabatan_tanda_tangan_4 :string
#  catatan                :string
#  tembusan               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class OutcomingMail < ActiveRecord::Base
  
end
