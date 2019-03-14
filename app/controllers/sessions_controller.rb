# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    redirect_to user_path(current_user) if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to user_path(user)
    else
      flash[:danger] = 'Email ou senha invalidos'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = 'Logout com sucesso'
    redirect_to new_session_path
  end
end
