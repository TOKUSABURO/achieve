class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(aaa)
    @blog = aaa

    mail to: "tra.tokusabu@gmail.com",
      subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(aaa)
    @greeting = "Hi"
    mail to: aaa.email
  end
end
