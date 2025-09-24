# lib/tasks/sample_data.rake

desc "Fill the database tables with some sample data"
task sample_data: :environment do
  puts "Seeding sample data..."

  if Rails.env.development?
    puts "Deleting old Item records..."
    Item.destroy_all
  end

  puts "Creating first item..."
  Item.create!(
    link_url: "https://en.wikipedia.org/wiki/Frog",
    link_description: "Wikipedia Frog Article",
    thumbnail_url: "https://upload.wikimedia.org/wikipedia/commons/4/4f/Bombina_bombina_1_%28Marek_Szczepanek%29_tight_crop.jpg"
  )

  puts "Creating second item..."
  Item.create!(
    link_url: "https://rubyonrails.org/",
    link_description: "Rails Homepage",
    thumbnail_url: "https://upload.wikimedia.org/wikipedia/commons/6/62/Ruby_On_Rails_Logo.svg"
  )

  puts "Done! Sample data created."
end
