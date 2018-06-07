class Organisateur < ApplicationRecord
    has_many :evenements
    accepts_nested_attributes_for :evenements
end
