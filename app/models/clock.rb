# == Schema Information
#
# Table name: clocks
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Clock < ActiveRecord::Base
end
