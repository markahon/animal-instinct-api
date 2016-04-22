# -*- encoding : utf-8 -*-
class TestingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.testing_mailer.test_email.subject
  #
  def test_email(to_email)
    Rails.logger.info "Sending test email to #{to_email},"
    mail to: to_email
  end
end
