class Deal < ApplicationRecord

  STATUS = ['pending', 'approved', 'denied']
  belongs_to :offer
  belongs_to :user

  validates :start_date, :end_date, presence: true

  validates :status, inclusion: { in: STATUS }
end
