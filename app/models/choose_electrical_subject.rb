class ChooseElectricalSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :studiyear
  has_and_belongs_to_many :electrical_subjects
end
