class CreateChurchUserAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :church_user_addresses do |t|
      t.belongs_to :church_user, null: false, foreign_key: true
      t.string :street
      t.string :neighborhood
      t.string :zip
      t.string :number
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
