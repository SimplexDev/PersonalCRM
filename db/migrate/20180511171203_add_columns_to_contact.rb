class AddColumnsToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :birthday, :date
    add_column :contacts, :family_details, :string
    add_column :contacts, :location, :string
  end
end
