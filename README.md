# GOAL

This is a demo to show-case how to geocode with no `address` but with street, city and country as individual columns.

This time, we will make the address be saved in the record after geocoding.

This demo was created from [this other one](https://github.com/andrerferrer/geocoder-gem#goal).

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### 1. [Have everything set with the geocoder gem](https://github.com/andrerferrer/geocoder-gem#goal)

### 2. Implement some callbacks in the model

`app/models/restaurant.rb`

```ruby
class Restaurant < ApplicationRecord
  
  # lots of things above here...

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
```

### 3. Create something in you console and see the magic

`rails console`

```ruby 
Restaurant.create!( 
  name: "Amareleen", 
  street: "Ladeira da Glória, 8 - Glória",
  city: "Rio de Janeiro - RJ",
  country: "Brazil"
)
```

And we're good to go 🤓

Good Luck and Have Fun
