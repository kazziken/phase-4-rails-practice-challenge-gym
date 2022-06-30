class Membership < ApplicationRecord
    validates :gym_id, presence: true, uniqueness: true
end
