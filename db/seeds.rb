response = Net::HTTP.get(URI('https://tmdb.lewagon.com/movie/top_rated'))
data = JSON.parse(response)

data["results"].each { |item|
  Movie.create(title: item["title"], overview: item["overview"], rating: item["vote_average"], poster_url: "https://image.tmdb.org/t/p/w500/"+item["poster_path"])
}
