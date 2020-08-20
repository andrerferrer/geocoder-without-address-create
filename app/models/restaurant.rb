class Restaurant < ApplicationRecord
  STRONG_PARAMS = %i[
    name
    street
    city
    country
  ]
  has_many :reviews

  geocoded_by :address

  # This is going to make the address be saved before geocoding
  before_validation :generate_and_save_address
  # This is going to make geocode run after validation
  # Check AR callbacks -> https://guides.rubyonrails.org/active_record_callbacks.html
  after_validation :geocode

  def generate_and_save_address
     self.address = "#{street}, #{city}, #{country}"
  end
end
