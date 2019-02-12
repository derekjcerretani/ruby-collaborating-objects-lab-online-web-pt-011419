require 'pry'

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
dont
end
