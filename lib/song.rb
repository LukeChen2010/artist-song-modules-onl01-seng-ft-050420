require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@all << self
  end

  def self.find_by_name(name)
    @@artists.detect {|a| a.name == name}
  end

  def self.all
    @@all
  end

  extend Memorable

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
