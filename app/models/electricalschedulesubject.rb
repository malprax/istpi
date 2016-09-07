# == Schema Information
#
# Table name: electricalschedulesubjects
#
#  id                    :integer          not null, primary key
#  electrical_subject_id :integer
#  lecture1_id           :integer
#  lecture2_id           :integer
#  lecture3_id           :integer
#  day                   :string
#  classtime_id          :integer
#  studiyear_id          :integer
#  classroom_id          :integer
#  count                 :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Electricalschedulesubject < ActiveRecord::Base
  belongs_to :electrical_subject
  belongs_to :classroom
  belongs_to :classtime
  belongs_to :studiyear
  belongs_to :lecture1_id, :class_name => 'Lecture'
  belongs_to :lecture2_id, :class_name => 'Lecture'
  belongs_to :lecture3_id, :class_name => 'Lecture'

end
