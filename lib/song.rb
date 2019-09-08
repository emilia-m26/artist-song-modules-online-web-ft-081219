require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Findable::ClassMethods
   extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods


  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

end
