class Car < ApplicationRecord
  belongs_to :user
  validates :model, presence: true
  has_many_attached :photos
end
