class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :subject, validate: true

  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: :subject,
      to: "notifypro2@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
