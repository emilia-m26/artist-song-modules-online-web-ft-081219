require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Findable::ClassMethods
   extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods


  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

end
