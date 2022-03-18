class User < ApplicationRecord
#model realtionships       
  has_many :plans 
  has_many :commitments
  has_many :progress_reports
  has_many :careers, through: :progress_reports 

#validations
validates :name, length: {minimum: 3}
validates :email, uniqueness: true 

#Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end
end
