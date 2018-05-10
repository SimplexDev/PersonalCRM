class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :notes
  belongs_to :user

  before_save :set_full_name

private

  def set_full_name
    self.full_name = "#{self.first_name} #{self.last_name}".strip
  end
end
