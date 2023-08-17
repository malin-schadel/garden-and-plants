puts "Deleting all plants and gardens.."
Garden.destroy_all if Rails.env.development?

puts "Creating gardens..."
Garden.create!(
  name: 'Stadtgarten',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)
Garden.create!(
  name: 'Japanese Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)
puts "#{Garden.count} gardens created."

Plant.create!(
  name: 'Fern',
  image_url: 'https://images.unsplash.com/photo-1599148401005-fe6d7497cb5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=654&q=80',
  garden: Garden.first
)
Plant.create!(
  name: 'Colorful Flowers',
  image_url: 'https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGdhcmRlbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
  garden: Garden.first
)
Plant.create!(
  name: 'Cacti',
  image_url: 'https://images.unsplash.com/photo-1463936575829-25148e1db1b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2117&q=80',
  garden: Garden.first
)
puts "#{Plant.count} gardens created."
