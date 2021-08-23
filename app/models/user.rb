class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services
  has_many :reviews
  validates :first_name, :last_name, :email, :username, presence: true
  validates :username, :email, uniqueness: true
end
