# == Schema Information
#
# Table name: lectures
#
#  id         :integer          not null, primary key
#  name       :string
#  nidn       :string
#  fakultas   :string
#  jurusan    :string
#  alamat     :string
#  no_kontak  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
