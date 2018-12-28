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
  songs.each_with_index { |song, index|
    puts "#{index+1} #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number: "
  user_input = gets.chomp
  songs.each_with_index { |song, index|
    if user_input.to_s == song || user_input.to_i == index + 1
      puts "Playing #{song}"
    elsif index == songs.length - 1
      puts "Invalid input, please try again: "
    end
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command: "
  command = gets.chomp
  while command != "exit"
    if command == "list"
      list(songs)
      puts "Please enter another command: "
      command = gets.chomp
    elsif command == "play"
      play(songs)
      puts "Please enter another command: "
      command = gets.chomp
    elsif command == "help"
      help
      puts "Please enter another command: "
      command = gets.chomp
    elsif
      puts "You entered a wrong command. Please enter again: "
      command = gets.chomp
    end
  end
  exit_jukebox
end
