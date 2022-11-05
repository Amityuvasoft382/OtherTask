require "test_helper"

class PaymentInfomationMailerTest < ActionMailer::TestCase
  test "create_information" do
    mail = PaymentInfomationMailer.create_information
    assert_equal "Create information", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
