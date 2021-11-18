class SongList
    def initialize
        @song = Array.new
    end

    def append(song)
        @song.push(song)
        self
    end

    def delete_first
        @song.shift
    end

    def delete_last
        @song.pop
    end

    def [](index)
        @song[index]
    end

    def with_title(title)
        @song.find{|song| title == song.name}
    end

    def to_s
        @song.each{|s| puts s}
    end
end

class Song
    @@plays = 0

    attr_reader :name, :artist, :duration
    attr_writer :name, :artist, :duration

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

s1 = Song.new('Love Story', 'Tylaor Swift', 2400)
s2 = Song.new('Love Story1', 'Tylaor Swift1', 2401)
s3 = Song.new('Love Story2', 'Tylaor Swift2', 2402)
s4 = Song.new('Love Story3', 'Tylaor Swift3', 2403)
songList = SongList.new
songList.append(s1).append(s2).append(s3).append(s4)
song = songList.with_title('Love Story1')
puts song
