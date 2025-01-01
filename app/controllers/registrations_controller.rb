class RegistrationsController < ApplicationController
  # GET /resource/sign_up
  def new
    @registration_form = RegistrationForm.new
  end

  # POST /resource
  def create
    @registration_form = RegistrationForm.new(**registration_params)

    if @registration_form.save
      flash[:notice] = 'Usuário criado com sucesso'
      redirect_to new_user_session_path
    else
      flash[:error] = @registration_form.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end
  private

  def registration_params
    params.permit(:user_email, :user_password, :user_password_confirmation, :church_name, :user_name)
  end
end
