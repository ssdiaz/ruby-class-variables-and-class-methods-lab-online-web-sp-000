class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres    #array of all genres of exisiting songs
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}

    @@genres.each do |genre|
      if hash_genre[genre] #is true / already created
        hash_genre[genre] += 1
      else
        hash_genre[genre] = 1
      end
    end

    hash_genre

  end

  def self.artist_count
    hash_artist = {}

    @@genres.each do |genre|
      if hash_artist[genre] #is true / already created
        hash_artist[genre] += 1
      else
        hash_artist[genre] = 1
      end
    end

    hash_artist

  end

end
