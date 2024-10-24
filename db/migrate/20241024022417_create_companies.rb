class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :legal_id
      t.datetime :activated_at

      t.timestamps
    end
  end
end
