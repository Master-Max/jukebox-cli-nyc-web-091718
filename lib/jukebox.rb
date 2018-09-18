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

songs_hash = {
  "Phoenix" => "1901",
  "Tokyo Police Club" => "Wait Up",
  "Sufjan Stevens" => "Too Much",
  "The Naked and the Famous" => "Young Blood",
  "(Far From) Home" => "Tiga",
  "The Cults" => "Abducted",
  "Phoenix" => "Consolation Prizes",
  "Harry Chapin" => "Cats in the Cradle",
  "Amos Lee" => "Keep It Loose, Keep It Tight"
}

#def songs_hash
  #songs_hash = {}
  #songs.each do |song|
    #split_song = song.split
    #songs_hash[split_song[0]] = split_song[1]
  #end
  #songs_hash
#end

def say_hello(name)
  "Hi #{name}!"
end

def list
  i = 0
  while i < songs.size do
    puts "#{i+1}. #{songs[i]}"
    i += 1
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of song you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts "Please enter a command:"
end

def play
  puts "Please enter a song name or number:"
  entry = gets.chomp
  the_song = nil
  if entry.class == Integer
    the_song = songs[entry - 1]
  else
    the_song = songs.find do |x|
      x == entry
    end
  end
  puts "Playing #{the_song}"
end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)
