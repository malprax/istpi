# == Schema Information
#
# Table name: studiyears
#
#  id         :integer          not null, primary key
#  name       :string
#  even_odd   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Studiyear < ActiveRecord::Base
  has_many :choose_electrical_subjects, dependent: :destroy
  has_many :electricalschedulesubjects, dependent: :destroy
  has_many :civilschedulesubjects, dependent: :destroy
end
