class UsersController < ApplicationController

  def create
    user = User.new(params[:user])

    if user.save
      sign_in(user)
      render :text => 'User saved'
    else
      render :json => user.errors.full_messages
    end
  end
end
