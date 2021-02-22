class Event < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :creator, class_name: "User"

  has_many :attendings, dependent: :destroy
  has_many :attendees, through: :attendings, source: :user, dependent: :destroy
end
