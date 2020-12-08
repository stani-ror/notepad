class Task < Post
  def initialize
    super
    @deadline = Time.now
  end

  def read_from_terminal
    # to do
  end

  def to_strings
    # to do
  end
end