require("pry")
require_relative("../models/albums")
require_relative("../models/artists")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  "name" => "Queen"
  })
artist1.save()

artist2 = Artist.new({
  "name" => "Bruno Mars"
  })
  artist2.save()

album1 = Album.new({
  "artist_id" => artist1.id,
  "title" => "On Air",
  "genre" => "Rock"
  })
album1.save()

album2 = Album.new({
  "artist_id" => artist1.id,
  "title" => "Flash Gordon",
  "genre" => "Rock"
  })
  album2.save()

album3 = Album.new({
    "artist_id" => artist2.id,
    "title" => "24K Magic",
    "genre" => "RnB"
    })
album3.save()

album4 = Album.new({
    "artist_id" => artist2.id,
    "title" => "Unorthodox Jukebox",
    "genre" => "RnB"
    })
album4.save()


binding.pry
nil
