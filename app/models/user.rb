class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :Books,dependent: :destroy       
  attachment :profile_image
  
  validates :name, length: { in: 2..20 }, uniqueness: true
  validates :profile_intro, length: { maximum: 50 }
end
