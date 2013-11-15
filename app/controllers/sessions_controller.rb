class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if user.nil?
      render :text => "Credentials wrong"
    else

      sign_in(user)
      redirect_to user_url(user)
    end

  end

  def destroy
    sign_out_current_user
    redirect_to new_user_url
  end


end
