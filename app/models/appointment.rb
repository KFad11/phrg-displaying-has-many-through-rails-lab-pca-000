# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_date
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
