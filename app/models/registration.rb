class Registration < ActiveRecord::Base
  before_create {generate_token(:kode_formulir)}
  scope :current, -> {order('name DESC')}
  def to_param
    #code
    "#{kode_formulir}"
  end

  def generate_token(column)
    #code
    begin
        self[column] = SecureRandom.urlsafe_base64(5)
    end while Registration.exists?(column => self[column])
  end
end
