# http://developer.constantcontact.com/doc/settingsemails
module ConstantContact
  class EmailAddress < Base
    self.element_name = 'settings/emailaddresses'
    def self.find_by_email(email_address)
      emails = find :all
      emails.each do |email|
        if email.email_address==email_address
          return email
        end
      end
      nil
    end
  end
end