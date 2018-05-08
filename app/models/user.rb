class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader

  has_many :contacts
  has_many :notes

  def admin?
    admin == true
  end
end
