class User < ApplicationRecord
    has_secure_password
    has_many :pests, dependent: :nullify
    validates :username, uniqueness: { case_sensitive: false}, 
    presence: true

end
