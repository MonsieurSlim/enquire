module ApplicationHelper
  def relevant_years
    range = ((Date.current.year - 96)..(Date.current.year)).to_a
    range.reverse
  end

  def doctor?
    current_user.role == "doctor"
  end

  def hospital_manager?
    current_user.role == "manager"
  end

  def client?
    current_user.role == "user"
  end

  def admin?
    current_user.role == "admin"
  end

  def verified_doctor?
    current_user.role == "doctor" && current_user.verified?
  end

  def unverified_doctor?
    current_user.role == "doctor" && !current_user.verified?
  end

  def has_hospital?
    current_user.role == "manager" && !current_user.hospitals.empty?
  end

  def has_unverified_hospital?
    !current_user.hospitals.where(verified: false).empty?
  end

  def body_mass_index(user)
    weight = user.weight
    height = user.height
    if weight && height
      @bmi = weight/(height*height)
      return @bmi.round(2)
    end
  end
end
