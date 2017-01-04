# == Schema Information
#
# Table name: civil_subjects
#
#  id          :integer          not null, primary key
#  name        :string
#  credit      :string
#  code        :string
#  category    :string
#  semester_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CivilSubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
