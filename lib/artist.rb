require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======
  # def self.reset_all
  #  self.all.clear
  # end

  # def self.count
  #  self.all.count
  # end

>>>>>>> 0e9bef38921103d8b3da7beb42387452b84338e1
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
