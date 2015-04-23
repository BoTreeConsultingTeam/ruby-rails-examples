require 'minitest/autorun'
require_relative 'look_say'

class LookSayTest < Minitest::Test

  def test_next_1_for_1
    assert LookSay.next(1).eql?(11)
  end

  def test_next_1_for_2
    skip
    assert LookSay.next(1, 2).eql?([11, 21])
  end

  def test_next_1_for_3
    skip
    assert LookSay.next(1, 3).eql?([11, 21, 1211])
  end

  def test_next_2_for_1211
    skip
    assert LookSay.next(1211, 2).eql?([111221, 312211])
  end

  def test_next_1_for_2466
    skip
    assert LookSay.next(2466).eql?(121426)
  end

  def test_next_5_for_23
    skip
    assert LookSay.next(23, 5).eql?([1213, 11121113, 31123113, 132112132113, 11131221121113122113])
  end

end
