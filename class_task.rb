require "date"

class Task < Post
  def initialize
    super
    @deadline = Time.now
  end

  def read_from_terminal
    puts "What's your task?"
    @text = STDIN.gets.chomp

    puts
    puts "What's the deadline? (dd.mm.yyy format)"
    input = STDIN.gets.chomp

    @deadline = Date._parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%d.%m.%Y, %H:%M:%S")} \n\r \n\r"
    deadline = "Deadline: #{@deadline}"

    return [deadline, @text, time_string]
  end
end