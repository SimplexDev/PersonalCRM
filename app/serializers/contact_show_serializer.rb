class ContactShowSerializer < ActiveModel::Serializer

  attributes :id, :user_id, :first_name, :last_name, :full_name, :email, :company, :past_company, :industry, :phone_number, :how_met, :last_contacted, :follow_up, :location, :family_details, :birthday

  has_many :notes

  def user_notes
    object.notes.where(user: scope)
  end
end
