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
  attr_accessor :semester_aktif, :total_sks

  validates_uniqueness_of :studiyear, :message => 'Anda Sudah Membuat KRS Semester Ini'
  # attr_accessible :electrial_subject_ids
  def semester_aktif
    #code
    '#{self.studiyear.name} #{self.studiyear.status}'
  end

  def total_sks
    #code
    sks = self.electrical_subjects.pluck(:credit)
    sks.each do |e|
        "#{e}.to_i"
    end
  end
end
