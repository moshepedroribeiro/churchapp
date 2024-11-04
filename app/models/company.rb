class Company < ApplicationRecord
  has_many :company_addresses
  has_many :company_contacts

  before_create :generate_schema

  def generate_schema!
    create_and_migrate_schema!("#{self.class.name.downcase}_#{id}")
  end
end
