require_relative './alphabet'

class Formatter
  def initialize
    @alphabet = Alphabet.new
  end

  def shuffle_data
    @data ||= @alphabet.data.shuffle
  end

  def echo_letters(number)
    alpha_letters(number).zip(alpha_letters(number)).flatten
  end

  def random_echo_alphabet(number)
    @data ||= @alphabet.data.shuffle
    @data.zip(@data).flatten
  end

  private 
  def alpha_letters(number)
    @alphabet.letters(number)
  end
end
