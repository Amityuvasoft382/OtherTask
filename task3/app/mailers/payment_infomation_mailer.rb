class PaymentInfomationMailer < ApplicationMailer

  def create_information(object,email,qui)
    @product = object
    #@object_count = object.class.count
    @qui= qui

    mail to: "#{email}", subject: "Invoice of Purchase"
  end
end
