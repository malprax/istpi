# == Schema Information
#
# Table name: functional_structurals
#
#  id           :integer          not null, primary key
#  name_to_list :string
#  lecture_id   :integer
#  jabatan      :string
#  nip          :string
#  nidn         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class FunctionalStructural < ActiveRecord::Base
  belongs_to :lecture
  def self.search(query)
    #code
    where("lower(name) like lower(?) OR lower(jabatan) like lower(?)", "%#{query}%", "%#{query}%")
  end
end
