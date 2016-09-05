# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  name       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Semester < ActiveRecord::Base
  has_many :civil_subjects
  has_many :electrical_subjects
end
