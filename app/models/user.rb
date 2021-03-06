class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :deals
  has_many :offers
  has_one_attached :photo

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def display_photo
    if photo.attached?
      photo.key
    else
      # Cloudinary default profile photo ID
      "jun7vge4yvdmrhi3wti1.png" 
    end
  end
end
