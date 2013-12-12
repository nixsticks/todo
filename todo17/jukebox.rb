require 'ruby-debug'

def enter_command
  "Enter a command to continue. Type 'help' for a list of commands."
end

def downcase_match(cmd, lib)
  lib.keys.detect {|key| key.downcase == cmd.downcase}
end

def jukebox(command)
  if command.downcase == "list"
    list_library
  else
    parse_command(command)
  end
  puts enter_command
end

def list_artist(artist, album_hash)
   artist_list = "\n---------------\n"
   artist_list += "#{artist}:\n"
   artist_list += "---------------"
   album_hash[:albums].each do |album_name, songs_hash|
     artist_list += "\n#{album_name}:\n\t"
     artist_list += songs_hash[:songs].join("\n\t")
   end
   artist_list
end

def list_library
  lib = full_library
  lib.each do |artist, album_hash|
    puts list_artist(artist, album_hash)
  end
end

def parse_command(command)
  parse_artist(command, full_library) || play_song(command, full_library) || not_found(command)
end

def parse_artist(command, lib)
  cmd = command.to_sym
  parsed = false
  match = downcase_match(cmd, lib)
  if match
    puts list_artist(match, lib[match])
    parsed = true
  end
  parsed
end

def play_song(command, lib)
  lib.each do |artist, hash|
    hash.each do |album_name, albums_hash|
      albums_hash.each do |album, songs_hash|
        songs_hash.each do |song_keyname, song_list|
          song_list.each do |song|
            if song.downcase == command.downcase
              puts "Now Playing: #{artist}: #{albums_hash.key(songs_hash)} - #{song}\n\n"
              return true
            end
          end
        end
      end
    end
  end
  false
end

def not_found(command)
  puts "I did not understand '#{command}'!\n\n"
  true
end