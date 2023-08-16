puts "Deleting all plants and gardens.."
Plant.destroy_all
Garden.destroy_all

puts "Creating gardens..."
Garden.create!(name: 'Stadtgarten', banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg')
Garden.create!(name: 'Japanese Garden', banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg')
puts "#{Garden.count} gardens created."

Plant.create!(name: 'Pink Flower', image_url: 'https://plus.unsplash.com/premium_photo-1678912442478-bbb088527ab0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z2FyZGVufGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60', garden: Garden.first)
Plant.create!(name: 'Colorful Flowers', image_url: 'https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGdhcmRlbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60', garden: Garden.first)
Plant.create!(name: 'More Flowers', image_url: 'https://plus.unsplash.com/premium_photo-1678836292789-6bb8d1f14a43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGdhcmRlbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60', garden: Garden.first)
puts "#{Plant.count} gardens created."
