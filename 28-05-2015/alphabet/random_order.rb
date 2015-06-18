require_relative './alphabet'

#This is a subclass of Alphabet class.
#It represents an english alphabet generated with randomly joining the letters from english alphabet.
class RandomOrder
  def initialize(alphabet, number)
    @alphabets = alphabet.letters(number)
  end
  #This method is overridden to shuffle the english alphabet letters
  #once for each instance of this class to achieve the random effect.
  def data
    @data ||= @alphabets.shuffle.join('')
  end
end

random_order = RandomOrder.new( Alphabet.new, 5 )

puts random_order.data
