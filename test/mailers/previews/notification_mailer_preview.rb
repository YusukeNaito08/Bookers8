# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/thamks_mail
  def thamks_mail
    NotificationMailer.thamks_mail
  end

end
