# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require 'uri'
# require 'net/http'

# url = URI("https://api.themoviedb.org/3/movie/top_rated")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["accept"] = 'application/json'
# request["Authorization"] =
# 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YjVjMzkyZTAwMDM3OWVmNzBmZjAwZjJlNDEyMzgwZSIsIm5iZiI6MTcyNDk1NzQ4NS4zMjM5NDYsI
# nN1YiI6IjY2ZDBjMjY1Nzc1MTQ3ODg2ODE1NzQyZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XQqEWW0khQj-an1kOkEpBvMCQ3kH
# owl8iiGYl5-nn3Q'

# response = http.request(request)
# puts response.read_body.results.first(10)

20.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating: rand(0.0..10.0).round(1)
  )
end
