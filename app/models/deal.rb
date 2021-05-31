class Deal < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :user, exclusion: { in: [current_user] }
end
