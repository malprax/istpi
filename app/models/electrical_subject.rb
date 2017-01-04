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

class ElectricalSubject < ActiveRecord::Base
  belongs_to :semester
  has_many :electricalschedulesubjects
  has_and_belongs_to_many :choose_electrical_subjects
end
