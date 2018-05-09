class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :comment, :created_at

  belongs_to :user
  belongs_to :contact
end
