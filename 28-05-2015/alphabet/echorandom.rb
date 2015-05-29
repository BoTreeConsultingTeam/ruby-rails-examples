require_relative './alphabet'
class EchoRandom

  def random(alphabet, number)
    alphabet.data.shuffle.first(number)
  end

  def echo(alphabet)
    alphabet.zip(alphabet)
  end

  def echorandom(alphabet)
    echo(random(alphabet, 10)).join('')
  end
end

print EchoRandom.new.echorandom(Alphabet.new)