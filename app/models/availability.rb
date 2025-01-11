# app/models/availability.rb

class Availability < ApplicationRecord
  belongs_to :psychologist
  has_many :appointments, dependent: :destroy

  validates :day_of_week, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
