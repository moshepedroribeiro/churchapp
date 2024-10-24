class Company < ApplicationRecord
  has_many :company_addresses
  has_many :company_contacts
end
