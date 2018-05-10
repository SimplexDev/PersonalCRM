class AddFullNameToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :full_name, :string
  end
end
