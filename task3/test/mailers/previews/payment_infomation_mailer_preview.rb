# Preview all emails at http://localhost:3000/rails/mailers/payment_infomation_mailer
class PaymentInfomationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/payment_infomation_mailer/create_information
  def create_information
    PaymentInfomationMailer.create_information
  end

end
