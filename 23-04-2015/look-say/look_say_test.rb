require 'minitest/autorun'
require_relative 'look_say'

class LookSayTest < Minitest::Test

  def test_next_1_for_1
    assert_equal 11, LookSay.next(1)
  end

  def test_next_1_for_2
    
    assert_equal [11, 21], LookSay.next(1, 2)
  end

  def test_next_1_for_3
    
    assert_equal [11, 21, 1211], LookSay.next(1, 3)
  end

  def test_next_2_for_1211
    
    assert_equal [111221, 312211], LookSay.next(1211, 2)
  end

  def test_next_1_for_2466
    
    assert_equal 121426, LookSay.next(2466)
  end

  def test_next_5_for_23
    
    assert_equal [1213, 11121113, 31123113, 132112132113, 11131221121113122113], LookSay.next(23, 5)
  end

end
