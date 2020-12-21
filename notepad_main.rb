require_relative "class_post"
require_relative "class_link"
require_relative "class_memo"
require_relative "class_task"

puts "Hi there! I'm your Notepad"
puts "What note would you like to add?"

choices = Post.post_types #array of post types

choice = "Buongiorno :)" #just a random string

until choice.match(/[0-2]/)

  choices.each_with_index do |type, index| # working with the array
    puts "\t#{index}. #{type}" # 3 elements in the array. their indexes are 0, 1 and 2
  end

  puts "Please choose the number (0-2)"
  choice = STDIN.gets.chomp
end

choice = choice.to_i

entry = Post.create(choice)
entry.read_from_terminal
entry.save

puts "Congrats! The note has been successfully saved."