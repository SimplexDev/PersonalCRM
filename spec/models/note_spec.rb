require 'rails_helper'

describe Contact do
  test_user = User.new(email: "test@gmail.com", password: "password", password_confirmation: "password")
  test_contact = Contact.new(first_name: "Test name1",last_name: "Test name1", user: test_user)
  test_note = Note.new(comment: "Test comment", user: test_user, contact: test_contact)

  it "is valid with valid attributes" do
    expect(test_note).to be_valid
  end

  it "is not valid without comment" do
    test_note.comment = nil
    expect(test_note.save).to eq(false)
    expect(test_note.errors[:comment]).to_not be_nil
  end

  it "should belong to user" do
    t = Note.reflect_on_association(:user)
    expect(t.macro).to eq(:belongs_to)
  end

  it "should belong to contact" do
    t = Note.reflect_on_association(:contact)
    expect(t.macro).to eq(:belongs_to)
  end
end
