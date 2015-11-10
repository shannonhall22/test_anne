# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/name
  def name
    ContactMailer.name
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/email
  def email
    ContactMailer.email
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/phone
  def phone
    ContactMailer.phone
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/message:text
  def message:text
    ContactMailer.message:text
  end

end
