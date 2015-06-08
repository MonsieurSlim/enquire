class HospitalVerificationRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :hospital

  validates :message, presence: true

  validates :hospital_id, uniqueness: { message: "This hospital already has a verification request open!" }

  after_commit :update_hospital, on: :destroy

  protected

  def update_hospital
    hospital.verified = true
    hospital.save
    HospitalList.create!(user_id: user.id, hospital_id: hospital.id)
  end
end
