# == Schema Information
#
# Table name: lectures
#
#  id         :integer          not null, primary key
#  name       :string
#  nidn       :string
#  fakultas   :string
#  jurusan    :string
#  alamat     :string
#  no_kontak  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lecture < ActiveRecord::Base
  has_many :functional_structurals
  has_many :civilschedulesubjects
  has_many :electricalschedulesubjects
  def self.search(query)
    #code
    where("lower(name) LIKE lower(?) OR lower(nidn) LIKE lower(?)", "%#{query}%", "%#{query}%")
  end
end
