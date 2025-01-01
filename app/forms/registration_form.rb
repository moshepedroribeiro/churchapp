class RegistrationForm < BaseForm
  attribute :church_name, :string
  attribute :user_name, :string
  attribute :user_email, :string
  attribute :user_password, :string
  attribute :user_password_confirmation, :string

  validates :church_name, :user_name, :user_email, presence: true
  validates :user_password, presence: true, length: { minimum: 6 }, confirmation: true
  validates :user_password_confirmation, presence: true, length: { minimum: 6 }

  def submit
    ActiveRecord::Base.transaction do
      company = Company.new(name: church_name)
      company.company_contacts.build(email: user_email)
      company.save!

      church_user = ChurchUser.new(name: user_name, password: user_password, password_confirmation: user_password_confirmation, email: user_email)
      church_user.save!
    end
  end
end
