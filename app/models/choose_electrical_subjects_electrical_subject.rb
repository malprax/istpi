# == Schema Information
#
# Table name: choose_electrical_subjects_electrical_subjects
#
#  id                           :integer          not null, primary key
#  electrical_subject_id        :integer
#  choose_electrical_subject_id :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class ChooseElectricalSubjectsElectricalSubject < ActiveRecord::Base
  belongs_to :electrical_subject
  belongs_to :choose_electrical_subject
end
