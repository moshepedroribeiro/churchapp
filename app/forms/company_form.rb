class CompanyForm < BaseForm
  attribute :name, :string
  attribute :email, :string
  attribute :phone, :string
  attribute :password, :string
  attribute :password_confirmation, :string

  validates :name, :legal_id, :email, :phone, presence: true
  validates :password, :password_confirmation, presence: true
  validates :password_confirmation, comparison: { equal_to: :password, message: 'Password Not Matches' }

  def submit
    CompanyContact.create(email:, phone:, company: Company.create(name:, legal_id:))
  end
end
