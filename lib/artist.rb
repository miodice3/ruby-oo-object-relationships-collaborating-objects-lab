
class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all  #call from other classes with Artist.all
        @@all
    end

    def self.find_or_create_by_name(name)
        self.name if @name
    end

    def add_song
        self.name
    end

    def songs
        Song.all.collect do |song|
            Song.all.artist == self.name
            end
    end

    def print_songs
        puts songs
    end



end