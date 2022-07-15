puts 'cleaning database'
Game.destroy_all
puts 'database has been cleaned'
puts 'making new games'
Game.create(title: "Mass effect 1", overview: "Commander Shepard must save the galaxy against a looming alien threat", poster_url: "https://cdn1.epicgames.com/offer/2a535f0e7c754dbe9157bf96adc62d56/EGS_MassEffectLegendaryEdition_BioWare_S2_1200x1600-c8286ed1e08b413e7cbdc190db5a589a.jpg", rating: 8)
Game.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://m.media-amazon.com/images/M/MV5BZmFiOWJkNWYtNjBjYi00OTk5LTg0M2EtOTkzZDhhODc3OGNlXkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_.jpg", rating: 7)
puts "2 games have been added to the database"
