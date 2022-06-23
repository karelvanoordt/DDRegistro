class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  REGEX_REQ = /^([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-z0-9]{3})$/

  validates :name, :password, :password_confirmation, :email, :rfc, presence: true
  validates :rfc, length: { minimum: 12, maximum: 13, message: 'El RFC debe contener entre 12 y 13 caracteres' }
  validates :rfc, uniqueness: { scope: :rfc, message: 'not valid' }
  validates :email, uniqueness: true
  validates :rfc, format: { with: /([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-z0-9]{3})/, message: "Formato de RFC no válido" }
end
