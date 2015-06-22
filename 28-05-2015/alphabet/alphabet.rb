require_relative './default_order'
require_relative './default_formatter'

#This class represents English Alphabet
class Alphabet

  attr_reader :data, :formatter

  def initialize(orderer = DefaultOrder.new, formatter = DefaultFormatter.new)
    @data = orderer.order(data)
    @formatter = formatter
  end

  #This method recites the whole english alphabet
  def recite
    (1..@data.length).map {|i| word(i)}.join("\n")
  end

  #This method forms a word by joining few english alphabet letters
  def word(number)
    letters(number).join("")
  end

  #This method returns the first few letters from english alphabet
  def letters(number)
    @formatter.format(@data.first(number))
  end

  #This method returns an array containing letters belong to english alphabet
  def data
    ('A'..'Z').to_a
  end
end


require_relative './random_order'
require_relative './echo_formatter'

puts Alphabet.new(RandomOrder.new, DefaultFormatter.new).word(2)