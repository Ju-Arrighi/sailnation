class Service < ApplicationRecord
  belongs_to :user
  has_many :reviews, denpendency: :destroy
  validates :video_url, :description, :part, :brand, presence: true
end
