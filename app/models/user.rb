class User < ApplicationRecord
    has_many :pests, dependent: :nullify

end
