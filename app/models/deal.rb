class Deal < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :start_date, :end_date, presence: true
end
