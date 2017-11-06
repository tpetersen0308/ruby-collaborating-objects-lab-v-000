class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[path].select{ |f| File.file? f }.map{ |f| File.basename f }
  end

  def import
  end

end
