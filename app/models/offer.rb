class Offer < ApplicationRecord
  INSTRUMENTS = ['guitar', 'electric guitar', 'bass', 'drums', 'violin']

  belongs_to :user

  validates :instrument, presence: true, inclusion: { in: INSTRUMENTS }
  validates :price, presence: true
  validates :location, presence: true
end
