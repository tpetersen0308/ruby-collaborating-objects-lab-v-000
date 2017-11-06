require "pry"

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir[@path].each { |filename| @files << filename }
    binding.pry
  end

  def import
  end

end
