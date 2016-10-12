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

class Civilschedulesubject < ActiveRecord::Base
  before_save :set_count
  belongs_to :civil_subject
  belongs_to :classroom, :class_name => 'Classroom'
  belongs_to :classtime, :class_name => 'Classtime'
  belongs_to :studiyear, :class_name => 'Studiyear'
  belongs_to :lecture1, :class_name => 'Lecture'
  belongs_to :lecture2, :class_name => 'Lecture'
  belongs_to :lecture3, :class_name => 'Lecture'

  scope :sortir, ->{order('count desc').order('classtime_id asc')} 

  def set_count
    #code
    if self.day == 'Senin'
      self.count = 1
    elsif self.day == 'Selasa'
      self.count = 2
    elsif self.day == 'Rabu'
      self.count = 3
    elsif self.day == 'Kamis'
      self.count = 4
    elsif self.day == 'Jumat'
      self.count = 5
    elsif self.day == 'Sabtu'
      self.count = 6
    elsif self.day == 'Minggu'
      self.count = 7
    end

  end
end
