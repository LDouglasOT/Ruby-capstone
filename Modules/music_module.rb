require_relative '../classes/music/music_album'

module MusicModule
  def add_a_music_album(publish_date, on_spotify)
    song = MusicAlbum.new(publish_date, on_spotify)
    @songs << song
  end

  def list_musicalbums
    if @songs.empty?
      puts 'There are no music album'
    else
      @songs.each_with_index do |song, i|
        puts "Number: #{i + 1}, Is it on spotify?: #{song.on_spotify},
            Publish Date: #{song.publish_date}"
      end
    end
  end
end