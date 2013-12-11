require_relative './jukebox'
require_relative './song_library'

def run
  puts "Welcome to Ruby Console Jukebox!"
  puts enter_command
  command = get_command
  while command != "exit" do
    run_command(command) unless command.downcase == "exit"
    command = get_command
  end
end

def get_command
  gets.strip
end

def run_command(command)
  case command
  when "help"
    show_help
  else
    jukebox(command)
  end
end

def show_help
  help = "Never worked a jukebox, eh? Pretty standard. Available commands are:
          'help' - shows this menu
          'list' - lists the whole song library
          or you can enter an artist's name to show that artist's songs
          or you can enter a song title to play that song!"
  puts help
end

run
