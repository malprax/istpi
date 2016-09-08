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
#  classtime_id          :integer
#  studiyear_id          :integer
#  classroom_id          :integer
#  count            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Civilschedulesubject < ActiveRecord::Base
  belongs_to :civil_subject
  belongs_to :classroom, :class_name => 'Classroom'
  belongs_to :classtime, :class_name => 'Classtime'
  belongs_to :studiyear, :class_name => 'Studiyear'
  belongs_to :lecture1, :class_name => 'Lecture'
  belongs_to :lecture2, :class_name => 'Lecture'
  belongs_to :lecture3, :class_name => 'Lecture'
end
