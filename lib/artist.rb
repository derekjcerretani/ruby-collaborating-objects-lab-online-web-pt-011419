require 'pry'

=begin
class Artist

  attr_accessor :name, :song, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name == name
        artist
      else
        artist = Artist.new(name)
      end
    end
  end

  def print_songs
    self.songs.collect { |song| puts song.name }
  end
end
=end

class Artist
  attr_accessor :name, :songs

   @@all = []

   def initialize(name)
    @name = name
    @songs = []
    save
  end

   def self.all
    @@all
  end

   def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

   def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

   def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

   def add_song(song)
    @songs << song
  end

   def print_songs
    songs.each { |song| puts song.name }
  end

   def save
    @@all << self
  end

   def songs
    @songs
  end
end 
