class CompaniesController < ApplicationController
  def new
    @company_form = CompanyForm.new(company_params)
  end

  private

  def company_params
    params.require(:company_form).permit(:name, :email, :phone, :password, :password_confirmation)
  end
end
