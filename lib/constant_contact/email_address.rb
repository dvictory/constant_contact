# http://developer.constantcontact.com/doc/settingsemails
module ConstantContact
  class EmailAddress < Base
    self.element_name = 'settings/emailaddresses'
    def self.find_by_email(email_address)
      find :first, {:params => {:email => email_address.downcase}}
    end
  end
end