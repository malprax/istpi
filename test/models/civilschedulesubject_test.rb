# == Schema Information
#
# Table name: civilschedulesubjects
#
#  id               :integer          not null, primary key
#  civil_subject_id :integer
#  lecture1_id      :integer
#  lecture2_id      :integer
#  lecture3_id      :integer
#  day              :string
#  classtime_id     :integer
#  studiyear_id     :integer
#  classroom_id     :integer
#  count            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CivilschedulesubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
