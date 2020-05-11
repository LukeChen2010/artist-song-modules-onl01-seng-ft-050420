require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  extend Findable
  
  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  def artist=(artist)
    @artist = artist
  end
  
  include Paramable

  #def to_param
   # name.downcase.gsub(' ', '-')
  #end
end
