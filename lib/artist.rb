require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artist = [ ]

  def self.find_by_name(name)
     @@artist.detect{|a| a.name == name}
   end

   def initialize
     @@artist << self
     @song =[]
   end

   def self.all
     @@artist
   end

   def self.reset_all
     self.all.clear
   end

    def self.count
     @@artist.count
   end

   def add_song(song)
     @songs << song
     song.artist = self
     songs.each { |song| add_song(song) }
   end

   def to_param
     name.downcase.gsub(' ', '-')
   end
end
