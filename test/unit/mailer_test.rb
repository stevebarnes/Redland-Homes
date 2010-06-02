require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "lead_notification" do
    @expected.subject = 'Mailer#lead_notification'
    @expected.body    = read_fixture('lead_notification')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_lead_notification(@expected.date).encoded
  end

  test "enquiry_confirmation" do
    @expected.subject = 'Mailer#enquiry_confirmation'
    @expected.body    = read_fixture('enquiry_confirmation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_enquiry_confirmation(@expected.date).encoded
  end

end
