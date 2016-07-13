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
end
