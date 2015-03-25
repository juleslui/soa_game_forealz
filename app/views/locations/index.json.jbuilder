json.locations @locations do |location|
  json.name location.name
  json.x_coordinates location.x_coordinates
  json.y_coordinates location.y_coordinates
end
