class AddSchemaNameToCompanyName < ActiveRecord::Migration[7.2]
  def change
    add_column :companies, :schema_name, :string
  end
end
