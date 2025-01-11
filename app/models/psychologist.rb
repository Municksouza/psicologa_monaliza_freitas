class Psychologist < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    has_many :patients, dependent: :destroy
    has_many :availabilities, dependent: :destroy
    has_many :ratings, dependent: :destroy
  
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
    # Add additional validations as needed
  end
  