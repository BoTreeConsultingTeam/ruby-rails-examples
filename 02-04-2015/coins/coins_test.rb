require 'minitest/autorun'
require_relative 'coins'

class CoinsTest < MiniTest::Unit::TestCase

  def test_count_for_1
    assert_equal 1, Coins.count(1)
  end

  def test_count_for_10
    assert_equal 1, Coins.count(10)
  end

  def test_count_for_15
    assert_equal 2, Coins.count(15)
  end

  def test_count_for_20
    assert_equal 2, Coins.count(20)
  end

  def test_count_for_18
    assert_equal 4, Coins.count(18)
  end

  def test_count_for_25_paise
    assert_equal 1, Coins.count(0.25)
  end

  def test_count_for_75_paise
    assert_equal 2, Coins.count(0.75)
  end

  def test_count_for_18_rupees_75_paise
    assert_equal 6, Coins.count(18.75)
  end

  def test_count_for_17_rupees_50_paise
    assert_equal 4, Coins.count(17.5)
  end

  def test_count_for_19
    assert_equal 4, Coins.count(19)
  end

  def test_count_for_120
    assert_equal 12, Coins.count(120)
  end

  def test_count_for_63
    assert_equal 8, Coins.count(63)
  end

  def test_count_for_12029
    assert_equal 1205, Coins.count(12029)
  end

  def test_count_for_992567
    assert_equal 99258, Coins.count(992567)
  end

end
