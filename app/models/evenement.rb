class Evenement < ApplicationRecord
  belongs_to :category
  belongs_to :organisateur
  has_many :commentaires
end
