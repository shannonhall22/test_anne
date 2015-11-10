class ContactMailer < ApplicationMailer
  default from: 'AA Notifier'

  def contact_email(contact)
    @contact = contact
    mail(to: 'shannon@agnesanne.com', subject: 'Agnes Anne Request')
  end
end
