# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorize_request, except: :create

  # POST /signup
  # return authenticated token upon signup
  def create
    #Implement the create method that creates a User, only if the signup is an @evil-corp.com email address
  end

  private

  def user_params
    params.require(
      :user
    ).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
