class Organisateur < ApplicationRecord
    has_many :evenements
    has_one :status
    accepts_nested_attributes_for :evenements
end
