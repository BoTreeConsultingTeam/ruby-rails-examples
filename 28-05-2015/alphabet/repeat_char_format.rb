require_relative './alphabet'

class RepeatCharFormat
  
  def initialize(character, number)
  	@characters = character.letters(number)
  end

  def format
    @characters.zip(@characters).shuffle.flatten.join('')
  end
end

repeat_format = RepeatCharFormat.new(Alphabet.new, 5)
puts repeat_format.format