require 'minitest/autorun'
require_relative 'delacorte'

class DelacorteTest < MiniTest::Unit::TestCase

  def test_2_2
    a = [ [4, 1], [2, 3] ]
    assert_equal 9, Delacorte.find(a)
  end

  def test_2_3
    skip
    a = [ [4, 1, 3], [6, 5, 2] ]
    assert_equal 37, Delacorte.find(a)
  end
end
