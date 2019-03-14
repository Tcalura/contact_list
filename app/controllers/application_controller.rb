# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_logger_in_user
    unless user_signed_in?
      flash[:danger] = 'Área restrita. Por favor, realize o login'
      redirect_to session_path
    end
  end
end
