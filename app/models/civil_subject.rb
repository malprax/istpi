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

class CivilSubject < ActiveRecord::Base
  belongs_to :semester
  has_many :civilschedulesubjects
end
