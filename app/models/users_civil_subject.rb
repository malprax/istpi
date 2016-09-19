class UsersCivilSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :civil_subject
end
