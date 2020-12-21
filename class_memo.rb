class Memo < Post
  def read_from_terminal
    puts "New Note (everything you enter until the \"end\" word):"

    @text = []
    line = nil

    while line != "end"
      line = STDIN.gets.chomp
      @text.push(line)
    end

    @text.pop #deliting the "end" word from the array
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%d.%m.%Y, %H:%M:%S")} \n\r \n\r"
    return @text.unshift(time_string) #inserting time_string into beginning of the array
  end
end