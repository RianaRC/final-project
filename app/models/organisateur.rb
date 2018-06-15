class Organisateur < ApplicationRecord
    has_many :evenements
    has_one :status
    belongs_to :user
    accepts_nested_attributes_for :evenements
end
