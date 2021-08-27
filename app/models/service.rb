class Service < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :video_url, presence: true
  validates :description, presence: true
  validates :part, presence: true
  validates :brand, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_brand_and_part,
    against: [ :brand, :part ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

    #from schema
    # t.string "brand"
    # t.string "part"
    # t.text "description"
    # t.string "level"
    # t.string "video_url"
    # t.bigint "user_id", null: false
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false

end
