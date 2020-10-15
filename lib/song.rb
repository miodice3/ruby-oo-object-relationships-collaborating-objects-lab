
class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_by_filename(string)
        artists_name = string.split(" - ")[0]
        song_name = string.split(" - ")[1]
        self.new(song_name)
        self.artist=(artists_name)
        self
    end

    def artist_name
        Artist.find_or_create_by_name(@name)
        # Artist.all.each do |instance|
        #     if instance.name == @name
        #         @name = instance.name
        #     else
        #         Artist.new(@name)
        #         @artist = Artist.name
        # end
end