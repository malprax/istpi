# == Schema Information
#
# Table name: electrical_subjects
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

class ElectricalSubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
