class ContactShowSerializer < ActiveModel::Serializer

  attributes :id, :user_id, :first_name, :email, :last_name, :full_name, :company, :past_company, :industry, :phone_number, :how_met, :last_contacted

  has_many :notes

  def user_notes
    object.notes.where(user: scope)
  end
end
