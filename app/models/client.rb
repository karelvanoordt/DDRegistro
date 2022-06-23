class Client < ApplicationRecord
    belongs_to :user

    validates :client_name, presence: true
    validates :client_rfc, length: { minimum: 12, maximum: 13, message: 'debe contener entre 12 y 13 caracteres'}
    validates :client_rfc, uniqueness: true
    validates :client_rfc, format: { with: /([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-z0-9]{3})/, message: "Formato de RFC no válido" }
    validates :phone, length: { minimum: 10, maximum: 10 }

end
