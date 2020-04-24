module Findable

  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

  class artist
    extend Findable 
  end

  class Song 
    extend Findable 
  end
