class Client < ApplicationRecord
    belongs_to :user

    validates :client_name, presence: true
    validates :client_rfc, length: { minimum: 12, maximum: 13, message: 'debe contener entre 12 y 13 caracteres'}
    validates :client_rfc, uniqueness: true
end
