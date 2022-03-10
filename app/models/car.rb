class Car < ApplicationRecord
  belongs_to :user
  validates :model, presence: true
  has_one_attached :photo
  # has_many :reviews
end
