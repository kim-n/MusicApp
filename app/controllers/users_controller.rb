class UsersController < ApplicationController

  def create
    user = User.new(params[:user])

    if user.save
      UserMailer.activation_email(user).deliver!
      render :text => "Check your email for activation"
    else
      render :json => user.errors.full_messages
    end
  end

  def activate
    user = User.find(params[:id])
    user.activated = true
    user.save!

    sign_in(user)
    redirect_to user_path(user)
  end
end
