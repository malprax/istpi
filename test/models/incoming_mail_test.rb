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

require 'test_helper'

class IncomingMailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
