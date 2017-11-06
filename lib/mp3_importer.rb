require "pry"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path << "/*"
    @files = []
  end

  def files
    #Dir[@path].select{ |f| File.file? f }.map{ |f| File.basename f }
    @files = Dir[@path]
  end

  def import
  end

end
