class Contactform < ApplicationRecord
  attribute :username,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  #attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "priyankashinde2907@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
