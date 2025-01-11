# app/models/rating.rb

class Rating < ApplicationRecord
  belongs_to :patient
  belongs_to :psychologist

  validates :score, presence: true, inclusion: { in: 1..5 }
end
