class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader

  has_many :contacts
  has_many :notes

  def admin?
    admin == true
  end

  before_save :set_full_name

private

  def set_full_name
    self.full_name = "#{self.last_name}, #{self.first_name} ".strip
  end
end
