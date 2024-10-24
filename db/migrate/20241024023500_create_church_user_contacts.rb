class CreateChurchUserContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :church_user_contacts do |t|
      t.belongs_to :church_user, null: false, foreign_key: true
      t.string :email
      t.string :phone
      t.string :cellphone
      t.string :website

      t.timestamps
    end
  end
end
