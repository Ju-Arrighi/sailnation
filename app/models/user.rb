class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services
  has_many :reviews
  validates :first_name, presence: true
  validates :last_name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
