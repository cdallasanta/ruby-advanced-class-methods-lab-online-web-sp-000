class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    newSong = self.new
    @@all << newSong
    newSong
  end

  def self.new_by_name(name)
    newSong = self.create
    newSong.name = name
    newSong
  end

  def self.create_by_name(name)
    newSong = self.new_by_name(name)
    @@all << newSong
    newSong
  end

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end
end
