class OrderMailer < ActionMailer::Base
  #default from: "from@example.com"

  default from: 'yourmail@gmail.com'

  def order_mailer(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: 'Order info')
  end

end
