class Evenement < ApplicationRecord
  mount_uploader :picture, EventUploader

  belongs_to :category
  belongs_to :organisateur
  has_many :commentaires
  has_one :section
end
