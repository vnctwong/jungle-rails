class UserNotifier < ApplicationMailer
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def send_order_receipt (user, order)
    mail(:to => user.email,
      :subject => "Thanks for your order! #{order.id}" )
    end
end