class Mailer < ActionMailer::Base
  

  def lead_notification(lead, sent_at = Time.now)
    subject    'Lead Notification'
     #recipients 'test1@busigeeks.com.au'
    recipients 'lourens@redlandshomes.com.au'
    from       'steve@busigeeks.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :lead => lead
  end

  def enquiry_confirmation(lead, sent_at = Time.now)
    subject    'Enquiry confirmation'
    recipients @lead.email_address
    from       'lourens@redlandhomes.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :lead => lead
  end
end