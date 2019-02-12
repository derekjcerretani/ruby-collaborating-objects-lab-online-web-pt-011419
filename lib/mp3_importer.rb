require 'pry'

class MP3Importer

  attr_accessor :path, :song, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    file = Dir.entries(@path)
    file.each do |file|
      if file.include?("mp3")
        @files << file
      end
    end
    @files
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end

end
