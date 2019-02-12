require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name 


  def self.new_by_filename(file_name)
    file = file_name.split( " - ")
    song = self.new(file[1])

    song
  end


end
