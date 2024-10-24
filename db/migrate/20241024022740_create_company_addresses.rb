class CreateCompanyAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :company_addresses do |t|
      t.belongs_to :company, null: false, foreign_key: true
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
