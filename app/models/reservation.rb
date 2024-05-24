class Reservation < ApplicationRecord
  belongs_to :car

  validates :user_name, :user_email, :start_date, :end_date, presence: true
  validates :end_date_after_start_date


  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
