require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

# pp parks


#Challenge 1: Index by ID

def Index_by_id(parks)
  result = {}

  parks.each do |park|
    result[park[:id]] = park
  end
  pp result
end


# Index_by_id(parks)

#Challenge 2: Index by country

def Index_by_country(parks)
  result = {}

  parks.each do |park|
    sortcountry = park[:country]
    result[sortcountry] ||= []
    result[sortcountry] << park
  end
    pp result
  end

# Index_by_country(parks)

#Challenge 3: Index by country and state

def Index_by_country_state(parks)
  result = {}

  parks.each do |park|
    sorting = park[:country], park[:state]
    result[sorting] ||= []
    result[sorting] << park
  end
  pp result
end

Index_by_country_state(parks)
