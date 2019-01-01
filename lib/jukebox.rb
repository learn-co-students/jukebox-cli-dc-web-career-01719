
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  input = input.to_i if ((1..songs.length).to_a.include?(input.to_i))
  unless (songs.include?(input)) || ((1..songs.length).to_a.include?(input))
    puts "Invalid input, please try again"
    return nil
  end
  if input.class == String
    puts "Playing #{input}"
  else
    puts "Playing #{songs[input - 1]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  help
  while input != "exit"
    puts"Please enter a command:"
    input = gets.chomp
    case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
  end
  exit_jukebox
end
