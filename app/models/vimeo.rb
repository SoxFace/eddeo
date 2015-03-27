class Vimeo
  attr_accessor :uri, :name, :id

  def initialize(uri, name)
    @uri = uri
    @name = name
    @id = uri.match(/\d+/).to_s
  end
end