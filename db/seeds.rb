require 'faker'

# Create Articles
30.times do
  name = Faker::Books::CultureSeries.unique.culture_ship
  url = Faker::Internet.url
  Article.create(name: name, url: url)
end


