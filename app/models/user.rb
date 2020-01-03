class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true
    validates :email, format: {with: /\A\S+@\S+\.\S+\z/i}
    
    validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
    
    has_secure_password
end
