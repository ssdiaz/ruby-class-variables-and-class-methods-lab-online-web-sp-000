class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @@count += 1
    @@genres << genre unless @@genres.include?(genre)
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres    #array of all genres of exisiting songs
    @@genres
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    
  end

end
