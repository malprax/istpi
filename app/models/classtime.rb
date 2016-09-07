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
  scope :order_waktu, ->{waktu}

  def self.waktu
      time.to_i
  end
end
