class User < ApplicationRecord

    has_many :favourites

    # Use brcypt gem
    has_secure_password

    # form validation
    validates :name, length: { minimum: 2 }

    validates :email, presence: true, uniqueness: true

end