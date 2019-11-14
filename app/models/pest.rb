class Pest < ApplicationRecord
    belongs_to :user, optional: true

    scope :adoptable, -> { where(user_id: nil) }
end
