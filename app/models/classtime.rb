# == Schema Information
#
# Table name: classtimes
#
#  id         :integer          not null, primary key
#  time       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classtime < ActiveRecord::Base
  has_many :electricalschedulesubjects
  has_many :civilschedulesubjects
  
end
