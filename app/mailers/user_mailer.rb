class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def activation_email(user)
    @user = user
    @url  = activate_users_path({activation_token: @user.activation_token, id: @user.id})

    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end

end
