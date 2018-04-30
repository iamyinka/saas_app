class ContactMailer < ActionMailer::Base

  default to: 'perpetualcoder@gmail.com'

  def contact_email(name, email, comments)
    @name = name
    @email = email
    @comments = comments

    mail(from: email, subject: "Contact Form Submitted!")
  end

end