require_relative('models/artist.rb')
require_relative('models/album.rb')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  'name' => 'Prince'
  })

artist2 = Artist.new({
  'name' => 'Taylor Swift'
  })

artist1.save
artist2.save

album1 = Album.new({
  'title' => 'Sign of the Times',
  'genre' => 'Funk Rock',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'title' => 'Purple Rain',
  'genre' => 'Funk Rock',
  'artist_id' => artist1.id
  })

album3 = Album.new({
  'title' => '22',
  'genre' => 'Country Pop',
  'artist_id' => artist2.id
  })

album1.save
album2.save
album3.save

p Album.all
p Album.find_album_by_artist(artist2.id)
