class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :plans 
         has_many :commitments
         has_many :progress_reports
         has_many :careers, through: :progress_reports 
end
