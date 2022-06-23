class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, :password, :password_confirmation, :email, :rcf, presence: true
  # validates :rfc, length: { minimum: 12, maximum: 13 }
  # validates :rfc, format: { with: /^([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-z0-9]{3})/, message: "Formato de RFC no válido" }
end
