class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :comment

      t.belongs_to :contact
      t.belongs_to :user
      t.timestamps
    end
  end
end
