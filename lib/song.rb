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
    #iterate over @@fenres and populate keys/values
    hash || = {}
    count = 0
    @@genres.each do each |genre|
      #hash = {genre => count.length}
      genre || = [] #set genre equal to array
      hash[genre] = count + 1

    end
    hash

  end

end
