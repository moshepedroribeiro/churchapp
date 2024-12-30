class AddCompanyIdOnChurchUser < ActiveRecord::Migration[7.2]
  def change
    add_column :church_users, :company_id, :integer
    add_index :church_users, :company_id
  end
end
