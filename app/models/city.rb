class City < ApplicationRecord

# has_many :coworking_spaces
# has_many :startups

# belongs_to_many :countries

has_and_belongs_to_many :favourites

end
