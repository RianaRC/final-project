json.extract! evenement, :id, :titre, :description, :date, :price, :category_id, :created_at, :updated_at
json.url evenement_url(evenement, format: :json)
