class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :tasks
  has_many :notifications, through: :tasks

  validates :email, uniqueness: true, presence: true

  def user_name
    name || email
  end

end
