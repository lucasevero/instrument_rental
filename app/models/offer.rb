class Offer < ApplicationRecord
  INSTRUMENTS = %w( Guitar Electric\ Guitar Bass Drums Violin)
  AVAILABLE = %w( approved pending denied )

  has_many_attached :photos
  belongs_to :user
  has_many :deals
  has_many :users, through: :deals

  validates :instrument, presence: true, inclusion: { in: INSTRUMENTS }
  validates :price, presence: true
  validates :location, presence: true
  validates :available, presence: true, inclusion: { in: AVAILABLE }
end
