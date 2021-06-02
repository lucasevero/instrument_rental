class Offer < ApplicationRecord
  INSTRUMENTS = %w( guitar electric guitar bass drums violin)
  AVAILABLE = %w( approved pending denied )
  
  has_many_attached :photos
  belongs_to :user
  has_many :users, through: :deals

  validates :instrument, presence: true, inclusion: { in: INSTRUMENTS }
  validates :price, presence: true
  validates :location, presence: true
  validates :available, presence: true, inclusion: { in: AVAILABLE }
end
