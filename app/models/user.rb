class User < ApplicationRecord
  has_many :logs
  validates :user_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: {in: 6..20}, on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
