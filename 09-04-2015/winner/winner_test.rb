require 'minitest/autorun'
require_relative 'winner'

class WinnerTest < MiniTest::Unit::TestCase

  def test_for_n_5_d_2
    assert_equal 'Player-3', Winner.find(5, 2)
  end

  def test_for_n_10_d_3
    skip
    assert_equal 'Player-4', Winner.find(10, 3)
  end

  def test_for_n_10_d_12
    skip
    assert_equal 'Player-10', Winner.find(10, 12)
  end

end
