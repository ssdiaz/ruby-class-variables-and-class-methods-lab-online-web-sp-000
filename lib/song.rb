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

  # genre = ["rap", "rap", "pop"]
    hash = {}
    #count = 0

    #@@
    genre.each do |genre|
      count ||= 0
      count += 1
      hash[genre] = count
    end

    hash

  end

end
