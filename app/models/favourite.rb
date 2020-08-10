class Favourite < ApplicationRecord
    belongs_to :users, optional: true
    # has_and_belongs_to_many :cities
    # has_and_belongs_to_many :startups
end
