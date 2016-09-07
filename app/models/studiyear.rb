# == Schema Information
#
# Table name: studiyears
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Studiyear < ActiveRecord::Base
  has_many :electricalschedulesubjects
  has_many :civilschedulesubjects
end
