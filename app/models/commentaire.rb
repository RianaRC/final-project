class Commentaire < ApplicationRecord
  belongs_to :evenement
  belongs_to :user
end
