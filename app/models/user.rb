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

# Hey Guys, you may need to validate the URL, i would write something like this
# i dont know how you are working with the url regex for the embeded video

# validates :url, :presence => true,
# :format    => {  :with => domain_regex  }
