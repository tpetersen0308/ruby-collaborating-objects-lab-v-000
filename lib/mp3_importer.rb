require "pry"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path << "/*"
    @files = []
  end

  def files
    #Dir[@path].each { |filename| @files << filename }
    Dir[@path].select{ |f| File.file? f }.map{ |f| File.basename f }
    #binding.pry
  end

  def import
  end

end
