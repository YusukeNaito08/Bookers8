class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  after_create :send_thanks_mail
  
  def send_thanks_mail
    NotificationMailer.thanks_mail(self).deliver
  end  


  has_many :books, dependent: :destroy
  attachment :profile_image

  validates :name, uniqueness: true, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }
end