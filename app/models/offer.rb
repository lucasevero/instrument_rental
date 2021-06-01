class Offer < ApplicationRecord
  INSTRUMENTS = ['guitar', 'electric guitar', 'bass', 'drums', 'violin']

  has_many_attached :photos
  belongs_to :user
  has_many :users, through: :deals

  validates :instrument, presence: true, inclusion: { in: INSTRUMENTS }
  validates :price, presence: true
  validates :location, presence: true
end
