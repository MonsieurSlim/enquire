class DoctorList < ActiveRecord::Base
  has_many :users
  has_many :hospitals
end
