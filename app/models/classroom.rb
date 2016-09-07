# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  classroom  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classroom < ActiveRecord::Base
  has_many :electricalschedulesubject
end
