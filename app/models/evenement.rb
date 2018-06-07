class Evenement < ApplicationRecord
  belongs_to :category
  belongs_to :organisateur
end
