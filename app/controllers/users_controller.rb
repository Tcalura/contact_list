# frozen_string_literal: true

class UsersController < ApplicationController

  # GET /contacts/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário cadastrado com sucesso'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    @user = user.find(user_params)
  end

  def edit
    @user = user.find(user_params[:id])
  end

  def destroy
    user = user.find(user_params)
  end

  private
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :password_confirmation
        # :password
      )
    end
end
