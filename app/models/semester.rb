class Semester < ActiveRecord::Base
  has_many :civil_subjects
  has_many :electrical_subjects
end
