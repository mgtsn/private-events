class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  has_many :created_events, foreign_key: "creator_id", class_name: "Event", dependent: :destroy

  has_many :attendings, dependent: :destroy
  has_many :attended_events, through: :attendings, source: :event, dependent: :destroy
end
