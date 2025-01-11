class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :psychologist
  has_many :appointments, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :age, presence: true
  # Add additional validations as needed
end
