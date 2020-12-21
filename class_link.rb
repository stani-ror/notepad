class Link < Post
  def initialize
    super
    @url = ""
  end

  def read_from_terminal
    puts "The link address"
    @url = STDIN.gets.chomp

    puts
    puts "The link description"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%d.%m.%Y, %H:%M:%S")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end