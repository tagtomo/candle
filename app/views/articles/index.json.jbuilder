json.array!(@articles) do |article|
  json.extract! article, :id, :area_id, :zipcode, :address, :latitude, :longitude, :articlestructure, :article_age, :floor_plans, :sale, :rent, :refurbishment, :sewer_connection, :parking, :optical_cable, :catv, :note
  json.url article_url(article, format: :json)
end
