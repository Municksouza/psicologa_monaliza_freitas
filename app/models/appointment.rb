# app/models/appointment.rb

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :availability

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, presence: true
end
