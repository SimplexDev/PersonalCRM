require 'rails_helper'

describe Contact do
  test_user = User.new(email: "test@gmail.com", password: "password", password_confirmation: "password")
  test_contact = Contact.new(first_name: "Test name1",last_name: "Test name1", user: test_user)

  it "is valid with valid attributes" do
    expect(test_contact).to be_valid
  end

  it "is not valid without first_name" do
    test_contact.first_name = nil
    expect(test_contact.save).to eq(false)
    expect(test_contact.errors[:first_name]).to_not be_nil
  end

  it "is not valid without last_name" do
    test_contact.first_name = nil
    expect(test_contact.save).to eq(false)
    expect(test_contact.errors[:last_name]).to_not be_nil
  end

  it "should have many notes" do
    t = Contact.reflect_on_association(:notes)
    expect(t.macro).to eq(:has_many)
  end

  it "should belong to user" do
    t = Contact.reflect_on_association(:user)
    expect(t.macro).to eq(:belongs_to)
  end
end
