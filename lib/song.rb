require 'pry'

class Song
  attr_accessor :name
  attr_reader :all

  @@all = []

  def initialize
    @@all << self
  end

  extend Findable

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
