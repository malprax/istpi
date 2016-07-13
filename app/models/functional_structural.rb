# == Schema Information
#
# Table name: functional_structurals
#
#  id         :integer          not null, primary key
#  name       :string
#  jabatan    :string
#  nip        :string
#  nidn       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FunctionalStructural < ActiveRecord::Base
end
