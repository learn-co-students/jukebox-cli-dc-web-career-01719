require 'pry'

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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp!
# puts say_hello(users_name)

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
songs.each_with_index {|song, index|
puts "#{index+1}. #{song}"
}
end

def play(songs)
  puts "Please enter a song or number:"
  input = gets.chomp
  if (1..9).to_a.include? (input.to_i)
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include? input
  puts "Playing #{input}"
else
    puts "Invalid input, please try again"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 command = ""
  help
  until command == "exit"
  puts "Please enter a command:"
  command = gets.chomp
  if command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "help"
    help
  elsif command == "exit"
    exit_jukebox 
  else 
  puts "Invalid input, please try again"
end
end
end