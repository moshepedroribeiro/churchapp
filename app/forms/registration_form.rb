class RegistrationForm < BaseForm
  attribute :church_name, :string
  attribute :user_name, :string
  attribute :user_email, :string
  attribute :user_password, :string
  attribute :user_password_confirmation, :string

  validates :church_name, :user_name, :user_email, presence: true
  validates :user_password, presence: true, length: { is: 6 }, confirmation: true

  def submit
    church_user = ChurchUser.new(church_name:)
    church_user.company.build(name: church_name)
    church_user.company.company_contacts.build(email: user_email)
    church_user.save!
  end
end
