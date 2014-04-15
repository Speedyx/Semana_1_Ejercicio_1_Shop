class UserMailer < ActionMailer::Base
  #default from: "from@example.com"

  default from: 'yourmail@gmail.com'

  def user_mailer(user)
    @user = user
    @url  = 'http://diyexample.com/login'
    mail(to: @user.email, subject: 'Welcome to My DIY Awesome Site')
  end

end
