# == Schema Information
#
# Table name: choose_electrical_subjects
#
#  id                    :integer          not null, primary key
#  electrical_subject_id :integer
#  studiyear_id          :integer
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class ChooseElectricalSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :studiyear
  has_and_belongs_to_many :electrical_subjects

  # attr_accessible :electrial_subject_ids
end
