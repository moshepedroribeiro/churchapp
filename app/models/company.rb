class Company < ApplicationRecord
  has_many :company_addresses
  has_many :company_contacts
  has_many :church_users

  before_create :generate_schema!

  private

  def generate_schema!
    ApplicationRecord.create_and_migrate_schema!("#{self.class.name.downcase}_#{id}")
  end
end
