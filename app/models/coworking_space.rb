class CoworkingSpace < ApplicationRecord

    has_many :startup

    belongs_to :city, optional: true
end
