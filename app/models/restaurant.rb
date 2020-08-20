class Restaurant < ApplicationRecord
  STRONG_PARAMS = %i[
    name
    street
    city
    country
  ]
  has_many :reviews

  geocoded_by :address
  # This is going to make geocode run after validation
  # Check AR callbacks -> https://guides.rubyonrails.org/active_record_callbacks.html
  after_validation :geocode

  def address
     "#{street}, #{city}, #{country}"
  end
end
