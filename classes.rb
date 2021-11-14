class Song
    @@plays = 0

    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
        @play = 0
    end
end

class Song
    def to_s
        "Song:#@name by #@artist (#@duration)"
    end
end

class KaraokSong < Song    
    attr_reader :name, :artist, :duration, :lyrics
    attr_writer :duration
    
    def initialize(name, artist, duration, lyrics)
        super(name, artist, duration)
        @lyrics = lyrics
    end

    def to_s
        super + "[#@lyrics]"
    end

    # def name
    #     @name
    # end

    # def duration=(duration)
    #     @duration = duration
    # end

    def duration_in_minutes
        @duration / 60
    end

    def duration_in_minutes=(duration)
        @duration = duration * 60
    end

    def play
        @play += 1
    end
end

class SongList
    MAX_TIME = 5 * 60

    def SongList.is_too_long(song)
        return song.duration > MAX_TIME
    end
end


# song = Song.new("Love Story", "Tylaor Swift", 260)
song = KaraokSong.new("Love Story", "Tylaor Swift", 310, "We were both young")
puts SongList.is_too_long(song)