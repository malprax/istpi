# == Schema Information
#
# Table name: incoming_mails
#
#  id             :integer          not null, primary key
#  address        :string
#  date           :string
#  abouts         :string
#  nomor_petunjuk :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class IncomingMail < ActiveRecord::Base
end
