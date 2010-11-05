class InquiryMailer < ActionMailer::Base

    def notification(inquiry)
        subject    "#{Spree::Config[:site_name]} Mensaje Recibido desde el sitio web"
        body       :inquiry => inquiry
        recipients Spree::Config[:contact_form_to]
        bcc        Spree::Config[:contact_form_bcc]
        from       inquiry.email
    end
    
    def comment_received(comment)
        subject    "#{Spree::Config[:site_name]} Información Recibida"
        body       :comment => comment
        recipients Spree::Config[:contact_form_to]
        bcc        Spree::Config[:contact_form_bcc]
        from       comment.user.email
    end
    
    
end
