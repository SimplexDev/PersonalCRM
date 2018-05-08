class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :notes
  belongs_to :user
end
