class EchoFormatter

  def format(letters)
    letters.zip(letters).flatten
  end
end