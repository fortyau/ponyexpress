class ApplicationMailer < ActionMailer::Base
  default from: "rider@ponyexpress.herokuapp.com"
  layout 'mailer'
end
