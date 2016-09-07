# == Schema Information
#
# Table name: civilschedulesubjects
#
#  id               :integer          not null, primary key
#  civil_subject_id :integer
#  lecture1_id      :integer
#  lecture2_id      :integer
#  lecture3_id      :integer
#  day              :string
#  time_id          :integer
#  year_id          :integer
#  room_id          :integer
#  count            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Civilschedulesubject < ActiveRecord::Base
  belongs_to :civilsubject
end
