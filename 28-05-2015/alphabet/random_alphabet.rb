require_relative './alphabet'

#This is a subclass of Alphabet class.
#It represents an english alphabet generated with randomly joining the letters from english alphabet.
class RandomAlphabet < Alphabet

  #This method is overridden to shuffle the english alphabet letters
  #once for each instance of this class to achieve the random effect.
  def data
    @data ||= super.shuffle
  end
end