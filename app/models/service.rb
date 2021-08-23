class Service < ApplicationRecord
  belongs_to :user
  has_many :reviews, denpendency: :destroy
  validates :video_url, presence: true
  validates :description, presence: true
  validates :part, presence: true
  validates :brand, presence: true
end
