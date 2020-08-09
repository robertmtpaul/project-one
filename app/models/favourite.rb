class Favourite < ApplicationRecord

    belongs_to :users, optional: true
end
