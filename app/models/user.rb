class User < ApplicationRecord
    has_many :drinks, dependent: :destroy
    has_secure_password
end
