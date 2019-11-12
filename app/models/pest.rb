class Pest < ApplicationRecord
    belongs_to :user 

    scope :adoptable, -> { where(user_id: nil) }
end
