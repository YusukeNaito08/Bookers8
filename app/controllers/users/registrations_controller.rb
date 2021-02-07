class Users::RegistrationsController < Devise::RegistrationsController
    
def create
    super
    NotificationMailer.thanks_mail(current_user).deliver
end    
    
end