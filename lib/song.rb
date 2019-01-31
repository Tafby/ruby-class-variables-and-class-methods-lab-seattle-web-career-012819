require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@count = 0
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
    g_count = {}
    @@genres.each do |g|
      if g_count[g]
        g_count[g] += 1
    else
      g_count[g] = 1
    end
  end
  g_count
end
# iterate through the array and put the key/value pair ex: rap => 1
# then iterate through the has, if rap is in hash, add to the value
def self.artist_count
  a_count = {}
  @@artists.each do |a|
    if a_count[a]
      a_count[a] += 1
    else
      a_count[a] = 1
    end
  end
  a_count
end

end # end of class
