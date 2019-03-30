require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

<<<<<<< HEAD
=======
  # def self.reset_all
  #  self.all.clear
  #end

  # def self.count
  #  self.all.count
  #end

>>>>>>> 0e9bef38921103d8b3da7beb42387452b84338e1
  def artist=(artist)
    @artist = artist
  end

end
