#This class represents English Alphabet
class Alphabet

  #This method recites the whole english alphabet
  def recite
    (1..data.length).map {|i| word(i)}.join("\n")
  end

  #This method forms a word by joining few english alphabet letters
  def word(number)
    letters(number).join("")
  end

  #This method returns the first few letters from english alphabet
  def letters(number)
    data.first(number)
  end

  #This method returns an array containing letters belong to english alphabet
  def data
    ('A'..'Z').to_a
  end
end