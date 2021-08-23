class Review < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :content, presence: true
  validates :stars, presence: true, inclusion: { in: (1..5) }
end
