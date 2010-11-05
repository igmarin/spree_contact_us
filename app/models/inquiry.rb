class Inquiry < ActiveRecord::Base
  
  validates_presence_of :email, :message => "Es obligatorio"
  validates_presence_of :message, :message => "Es obligatorio"
  
  after_save :deliver_notification_email
  
  
  def deliver_notification_email
    InquiryMailer.deliver_notification(self)
  end
  
  
end
