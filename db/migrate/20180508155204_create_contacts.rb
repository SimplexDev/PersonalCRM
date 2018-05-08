class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :email, null: false, default: ""
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :past_company
      t.string :industry
      t.string :phone_number
      t.string :how_met
      t.datetime :last_contacted
      t.datetime :follow_up

      t.timestamps

      t.belongs_to :user
    end
  end
end
