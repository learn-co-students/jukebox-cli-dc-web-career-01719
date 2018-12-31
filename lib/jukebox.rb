require "pry"

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  for i in (1..songs.length)
    puts "#{i}. #{songs[i - 1]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  
  if songs.include?(song_choice)
    song_index = songs.index(song_choice)
    puts "Playing #{songs[song_index]}"
  elsif song_choice.to_i > 0 && song_choice.to_i < songs.length+1
    song_index = song_choice.to_i - 1
    puts "Playing #{songs[song_index]}"
  else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.chomp
  if user_command == "list"
    list(songs)
  elsif user_command == "play"
    play(songs)
  elsif user_command == "help"
    help
  elsif user_command == "exit"
    exit_jukebox
  end
  if user_command != "exit"
    run(songs)
  end
end

#run(songs)
